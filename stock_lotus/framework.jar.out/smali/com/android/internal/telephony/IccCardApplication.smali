.class public Lcom/android/internal/telephony/IccCardApplication;
.super Ljava/lang/Object;
.source "IccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardApplication$PersoSubState;,
        Lcom/android/internal/telephony/IccCardApplication$AppState;,
        Lcom/android/internal/telephony/IccCardApplication$AppType;
    }
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field public perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;
    .locals 4
    .parameter "state"

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 149
    .local v0, newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :goto_0
    return-object v0

    .line 139
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 140
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 141
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 142
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 143
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 144
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_ILLEGAL:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardApplication$AppState;
    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 4
    .parameter "type"

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 131
    .local v0, newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_0
    return-object v0

    .line 122
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 123
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 124
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 125
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 126
    .end local v0           #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .restart local v0       #newType:Lcom/android/internal/telephony/IccCardApplication$AppType;
    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    .locals 4
    .parameter "substate"

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 182
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PersoSubstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 185
    .local v0, newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :goto_0
    return-object v0

    .line 157
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 158
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 159
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 160
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 161
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 162
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 163
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 164
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 165
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 166
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 167
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 168
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 169
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 170
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 171
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 172
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 173
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 174
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 175
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 176
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_14
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 177
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 178
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 179
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 180
    .end local v0           #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .restart local v0       #newSubState:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;
    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 4
    .parameter "state"

    .prologue
    .line 190
    packed-switch p1, :pswitch_data_0

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PinState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 212
    .local v0, newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :goto_0
    return-object v0

    .line 195
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 196
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 198
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 199
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 201
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 202
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 204
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 205
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 207
    .end local v0           #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 208
    .restart local v0       #newPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne v1, v2, :cond_0

    .line 221
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v1, v2, :cond_2

    .line 226
    :cond_1
    const-string v1, ",pin1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ",pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
