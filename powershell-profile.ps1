Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
# Import-Module PSReadLine
# Set-PoshPrompt -Theme ys
Set-PoshPrompt -Theme ~/.terminal-custom-theme.json
# Set-PSReadLineOption -PredictionSource History

Set-Alias -Name k kubectl
Set-Alias -Name d docker
Set-Alias -Name dc docker-compose

Function kcc { kubectl config current-context }
Function kcg { kubectl config get-contexts }
Function kcs { kubectl config use-context $args }
Function kgns { kubectl get ns }
Function kga { kubectl get all $args }
Function kgans { kga --namespace $args }
Function acrl { az acr login --name $args }
Function acrlaxa { acrl axamicroservices }
Function krd { k rollout restart $args }
Function krdpvnp { 
    krd deployment.apps/fpro-product-selector -n fpro-product-selector-nonprod
    krd deployment.apps/fpro-optimizer-lite -n fpro-optimizer-lite-nonprod
    krd deployment.apps/fpro-optimizer-lite-sg -n fpro-optimizer-lite-sg-nonprod
}
Function kd { k describe $args }
Function kgn { k get nodes }
Function kgl { k logs $args }
Function kglns { k logs -n $args }