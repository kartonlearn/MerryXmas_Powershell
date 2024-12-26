$chars = 'MERRY CHRISTMAS'

for ($y = 15; $y -ge -14; $y--) {
 $line = ""
for ($x = -30; $x -lt 30; $x++) {

    # Calculate the square of x and y components
    # Calculate the x component
    $xComponent = [math]::Pow(($x * 0.05), 2)
    # Calculate the y component
    $yComponent = [math]::Pow(($y * 0.1), 3)
    # Combine the components
    $exprRight = $xComponent * $yComponent
    $yComponent2 = [math]::Pow($y * 0.1, 2)
    
    # Sum the components and subtract 1
    $sumComponents = $xComponent + $yComponent2 - 1
    
    # Raise the result to the power of 3
    $exprLeft = [math]::Pow($sumComponents, 3)
    $exprRightNew = [math]::Pow(($x * 0.05), 2) * [math]::Pow(($y * 0.1), 3)

    if ($exprLeft -le $exprRightNew) {
        $line += $chars[(($x - $y) % $chars.Length + $chars.Length) % $chars.Length]
    } else {
        $line += " "
    }
}
Write-Output $line
}
