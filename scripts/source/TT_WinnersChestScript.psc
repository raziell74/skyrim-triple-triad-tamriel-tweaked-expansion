Scriptname TT_WinnersChestScript extends ObjectReference 

TT_Skyrim_QuestScript Property TT_Script Auto
Formlist Property TT_OpponentCardsB Auto

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)     
    If akSourceContainer != None
        Self.RemoveItem(akBaseItem, aiItemCount, false, akSourceContainer)
        ;Debug.Notification("Don't store things here.")
    Endif
EndEvent

Function StartDisplayScore() 
    UnregisterForUpdate()
    RegisterforSingleUpdate(0.5)
EndFunction 

Event OnUpdate() 
    DisplayScore()
EndEvent

Function DisplayScore() 
    Int[] Score = GetScoreB() 
    If Score[0] != TT_Script.PreviousPlayerScore
        TT_Script.TT_PlayerNumbers[Score[0]].Enable()
        TT_Script.TT_PlayerNumbers[TT_Script.PreviousPlayerScore].Disable()
        TT_Script.PreviousPlayerScore = Score[0]
    Endif 
    
    If Score[1] != TT_Script.PreviousOpponentScore 
        TT_Script.TT_OpponentNumbers[Score[1]].Enable()
        TT_Script.TT_OpponentNumbers[TT_Script.PreviousOpponentScore].Disable()
        TT_Script.PreviousOpponentScore = Score[1]
    Endif
EndFunction 

Int[] Function GetScoreB()
    Int[] CurrentScore = New Int[2]
   
    Int PlayerScore = 0
    Int OpponentScore = 0
    Int M = 5 
    While M > 0
        M -= 1
        If TT_Script.TT_PlayerHandActivators[M].IsEnabled()
            PlayerScore += 1
        Endif 
        
        If TT_Script.TT_OpponentHandStatics[M].IsEnabled() 
            OpponentScore += 1
        Endif 
    EndWhile 
    
    Int Ma = 9 
    While Ma > 0
        Ma -= 1 
        If TT_Script.TT_PlayerBoardCards[Ma].IsEnabled()
            PlayerScore += 1
        Elseif TT_Script.TT_OpponentBoardCards[Ma].IsEnabled() 
            OpponentScore += 1
        EndIf 
    EndWhile
    
    Utility.Wait(0.1)
    CurrentScore[0] = PlayerScore
    CurrentScore[1] = OpponentScore
    Return CurrentScore
EndFunction