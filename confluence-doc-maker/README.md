# Confluence Doc Maker

## Setup

Add this to the desired action workflow: 

      - name: Confluence Doc Maker
        # checks all steps before have finshed
        if: ${{ success() }}
        # required to run
        uses: PangeaResearch/actions/confluence-doc-maker@main
        with:
          # nexus credentials
          credentials: ${{ secrets.MY_CREDENTIALS }}