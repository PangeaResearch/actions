# tf-nexus

## Setup

Add this to the dispatching repo: 

      - name: Nexus Terraform
        # checks all steps before have finshed
        if: ${{ success() }}
        # required to run
        uses: PangeaResearch/actions/tf-nexus@v1
        with:
          # nexus credentials
          credentials: ${{ secrets.MY_CREDENTIALS }}
          # task ID
          task: ${{ secrets.TASK_ID }}