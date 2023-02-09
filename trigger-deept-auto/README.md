# Trigger Deept Auto

## Setup

Add this to the desired action: 

      - name: Trigger Deept Auto
        # checks all steps before have finshed
        if: ${{ success() }}
        # required to run
        uses: PangeaResearch/actions/trigger-deept-auto@main
        with:
          # nexus credentials
          credentials: ${{ secrets.MY_CREDENTIALS }}
