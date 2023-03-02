# ECR Auto DEploy

## Setup

Add this to the desired action workflow: 

      - name: ECR Auto Deploy
        # checks all steps before have finshed
        if: ${{ success() }}
        # required to run
        uses: PangeaResearch/actions/trigger-ecr-auto@main
        with:
          # nexus credentials
          credentials: ${{ secrets.MY_CREDENTIALS }}
          # image name you want to deploy
          image: this-docker-image