# Trigger Deept Auto

## Setup

Add this to the desired action: 

      - name: Deeppt Preproc Auto Deploy
        # checks all steps before have finshed
        if: ${{ success() }}
        # required to run
        uses: PangeaResearch/actions/deeppt-preproc-auto-deploy@main
        with:
          # nexus credentials
          credentials: ${{ secrets.MY_CREDENTIALS }}
