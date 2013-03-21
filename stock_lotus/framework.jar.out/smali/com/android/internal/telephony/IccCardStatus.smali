.class public Lcom/android/internal/telephony/IccCardStatus;
.super Ljava/lang/Object;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardStatus$PinState;,
        Lcom/android/internal/telephony/IccCardStatus$CardState;
    }
.end annotation


# static fields
.field static final CARD_MAX_APPS:I = 0x8


# instance fields
.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field private mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field private mCdmaSubscriptionAppIndex:I

.field private mGsmUmtsSubscriptionAppIndex:I

.field private mImsSubscriptionAppIndex:I

.field private mNumApplications:I

.field private mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addApplication(Lcom/android/internal/telephony/IccCardApplication;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/IccCardApplication;
    .locals 1
    .parameter "index"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardApplication;

    goto :goto_0
.end method

.method public getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    return-object v0
.end method

.method public getCdmaSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    return v0
.end method

.method public getGsmUmtsSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    return v0
.end method

.method public getImsSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    return v0
.end method

.method public getNumApplications()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    return v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    return-object v0
.end method

.method public setCardState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_CardState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 100
    :goto_0
    return-void

    .line 89
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0

    .line 92
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0

    .line 95
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_INVALID:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCdmaSubscriptionAppIndex(I)V
    .locals 0
    .parameter "cdmaSubscriptionAppIndex"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 145
    return-void
.end method

.method public setGsmUmtsSubscriptionAppIndex(I)V
    .locals 0
    .parameter "gsmUmtsSubscriptionAppIndex"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 137
    return-void
.end method

.method public setImsSubscriptionAppIndex(I)V
    .locals 0
    .parameter "imsSubscriptionAppIndex"

    .prologue
    .line 152
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 153
    return-void
.end method

.method public setNumApplications(I)V
    .locals 0
    .parameter "numApplications"

    .prologue
    .line 160
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    .line 161
    return-void
.end method

.method public setUniversalPinState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_PinState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 129
    :goto_0
    return-void

    .line 112
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 115
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 118
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 121
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 124
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 107
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
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "IccCardState {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",num_apps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",gsm_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    if-ge v2, v4, :cond_1

    .line 183
    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 184
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    const-string v2, ",cmda_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    if-ge v2, v4, :cond_3

    .line 190
    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 191
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    :cond_3
    const-string v2, ",ism_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
