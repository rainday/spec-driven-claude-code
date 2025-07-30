#!/bin/bash

# Project Status Check Script for James (Strategic Planner)
# This script analyzes the current project state and provides recommendations

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    local status=$1
    local message=$2
    
    case $status in
        "success")
            echo -e "${GREEN}✅ $message${NC}"
            ;;
        "warning")
            echo -e "${YELLOW}⚠️  $message${NC}"
            ;;
        "error")
            echo -e "${RED}❌ $message${NC}"
            ;;
        "info")
            echo -e "${BLUE}ℹ️  $message${NC}"
            ;;
    esac
}

# Function to check if file exists and is not empty
check_file() {
    local file_path=$1
    local file_name=$2
    
    if [ -f "$file_path" ]; then
        if [ -s "$file_path" ]; then
            print_status "success" "$file_name exists and has content"
            return 0
        else
            print_status "warning" "$file_name exists but is empty"
            return 1
        fi
    else
        print_status "error" "$file_name is missing"
        return 2
    fi
}

# Function to count features and their completion status
analyze_features() {
    local features_dir="features"
    
    if [ ! -d "$features_dir" ]; then
        print_status "info" "No features directory found - project may be new"
        return
    fi
    
    local total_features=0
    local complete_features=0
    local incomplete_features=0
    local missing_features=()
    
    for feature_dir in "$features_dir"/*/; do
        if [ -d "$feature_dir" ]; then
            local feature_name=$(basename "$feature_dir")
            total_features=$((total_features + 1))
            
            local requirements_file="$feature_dir/requirements.md"
            local design_file="$feature_dir/design.md"
            local tasks_file="$feature_dir/tasks.md"
            
            local has_requirements=false
            local has_design=false
            local has_tasks=false
            
            [ -f "$requirements_file" ] && has_requirements=true
            [ -f "$design_file" ] && has_design=true
            [ -f "$tasks_file" ] && has_tasks=true
            
            if [ "$has_requirements" = true ] && [ "$has_design" = true ] && [ "$has_tasks" = true ]; then
                complete_features=$((complete_features + 1))
                print_status "success" "Feature '$feature_name' is complete"
            else
                incomplete_features=$((incomplete_features + 1))
                missing_features+=("$feature_name")
                print_status "warning" "Feature '$feature_name' is incomplete"
                [ "$has_requirements" = false ] && echo "  - Missing requirements.md"
                [ "$has_design" = false ] && echo "  - Missing design.md"
                [ "$has_tasks" = false ] && echo "  - Missing tasks.md"
            fi
        fi
    done
    
    echo ""
    print_status "info" "Feature Analysis Summary:"
    echo "  - Total features: $total_features"
    echo "  - Complete features: $complete_features"
    echo "  - Incomplete features: $incomplete_features"
    
    if [ ${#missing_features[@]} -gt 0 ]; then
        echo ""
        print_status "warning" "Incomplete features that need attention:"
        for feature in "${missing_features[@]}"; do
            echo "  - $feature"
        done
    fi
}

# Function to check governance files
check_governance() {
    echo ""
    print_status "info" "Checking governance files..."
    
    local governance_files=(
        ".claude/rules/product.md:Product Vision"
        ".claude/rules/tech.md:Technology Stack"
        ".claude/rules/structure.md:Project Structure"
        ".claude/rules/style-guide.md:Design System"
        ".claude/rules/development.md:Development Workflow"
        ".claude/rules/security.md:Security Guidelines"
        ".claude/rules/testing.md:Testing Strategy"
        ".claude/rules/deployment.md:Deployment Guidelines"
    )
    
    local missing_governance=()
    local empty_governance=()
    
    for file_info in "${governance_files[@]}"; do
        IFS=':' read -r file_path file_name <<< "$file_info"
        check_file "$file_path" "$file_name"
        case $? in
            1) empty_governance+=("$file_name") ;;
            2) missing_governance+=("$file_name") ;;
        esac
    done
    
    echo ""
    if [ ${#missing_governance[@]} -gt 0 ]; then
        print_status "warning" "Missing governance files:"
        for file in "${missing_governance[@]}"; do
            echo "  - $file"
        done
    fi
    
    if [ ${#empty_governance[@]} -gt 0 ]; then
        print_status "warning" "Empty governance files:"
        for file in "${empty_governance[@]}"; do
            echo "  - $file"
        done
    fi
}

# Function to check project structure
check_project_structure() {
    echo ""
    print_status "info" "Checking project structure..."
    
    local required_dirs=(
        "src:Source Code"
        "docs:Documentation"
        "tests:Test Files"
    )
    
    for dir_info in "${required_dirs[@]}"; do
        IFS=':' read -r dir_path dir_name <<< "$dir_info"
        if [ -d "$dir_path" ]; then
            print_status "success" "$dir_name directory exists"
        else
            print_status "warning" "$dir_name directory is missing"
        fi
    done
}

# Function to generate recommendations
generate_recommendations() {
    echo ""
    print_status "info" "Recommendations:"
    
    # Check if this is a new project
    if [ ! -d "features" ] && [ ! -f ".claude/rules/product.md" ]; then
        echo "  🚀 This appears to be a new project. Consider:"
        echo "    - Running: James, plan feature 'first-feature-name'"
        echo "    - Creating governance files first"
        echo "    - Setting up project structure"
        return
    fi
    
    # Check for missing governance
    if [ ! -f ".claude/rules/product.md" ]; then
        echo "  📋 Missing product vision. Consider:"
        echo "    - Running: James, update governance --type=product"
    fi
    
    # Check for incomplete features
    if [ -d "features" ]; then
        local incomplete_count=0
        for feature_dir in features/*/; do
            if [ -d "$feature_dir" ]; then
                local feature_name=$(basename "$feature_dir")
                if [ ! -f "$feature_dir/requirements.md" ] || [ ! -f "$feature_dir/design.md" ] || [ ! -f "$feature_dir/tasks.md" ]; then
                    incomplete_count=$((incomplete_count + 1))
                fi
            fi
        done
        
        if [ $incomplete_count -gt 0 ]; then
            echo "  🔧 Found $incomplete_count incomplete features. Consider:"
            echo "    - Running: James, update all"
            echo "    - Or: James, update feature 'specific-feature-name'"
        fi
    fi
    
    # Check for ready-to-implement features
    if [ -d "features" ]; then
        local ready_count=0
        for feature_dir in features/*/; do
            if [ -d "$feature_dir" ]; then
                local feature_name=$(basename "$feature_dir")
                if [ -f "$feature_dir/requirements.md" ] && [ -f "$feature_dir/design.md" ] && [ -f "$feature_dir/tasks.md" ]; then
                    ready_count=$((ready_count + 1))
                fi
            fi
        done
        
        if [ $ready_count -gt 0 ]; then
            echo "  ✅ Found $ready_count features ready for implementation. Consider:"
            echo "    - Running: task-executor /Emily start implementation"
        fi
    fi
}

# Function to show quick commands
show_quick_commands() {
    echo ""
    print_status "info" "Quick Commands:"
    echo "  📊 Check status: James, status"
    echo "  📋 List features: James, list features"
    echo "  🔧 Plan feature: James, plan feature 'feature-name'"
    echo "  🔄 Update feature: James, update feature 'feature-name'"
    echo "  📈 Create roadmap: James, create roadmap"
    echo "  🚀 Start implementation: task-executor /Emily start"
}

# Main execution
main() {
    echo "🔍 James - Project Status Analysis"
    echo "=================================="
    
    # Check governance files
    check_governance
    
    # Analyze features
    analyze_features
    
    # Check project structure
    check_project_structure
    
    # Generate recommendations
    generate_recommendations
    
    # Show quick commands
    show_quick_commands
    
    echo ""
    print_status "info" "Analysis complete! Use the recommendations above to plan your next steps."
}

# Run main function
main "$@" 