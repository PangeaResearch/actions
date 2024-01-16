# Portal Stage Autodeploy

## Setup

Add this to the desired action workflow: 

      - name: Portal Stage Autodeploy
        # checks all steps before have finshed
        if: ${{ success() }}
        # required to run
        uses: PangeaResearch/actions/portal-stage-autodeploy@main
        with:
          # nexus credentials
          credentials: ${{ secrets.MY_CREDENTIALS }}
          # desired version to deploy
          version: (1.1.150, 1.23.0)
          # group name to deploy
          group: (enlight-portal-front)
          # suffix of file
          suffix: (tgz)