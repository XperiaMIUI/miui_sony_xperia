.class Lcom/android/server/PowerManagerService$LockList;
.super Ljava/util/ArrayList;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/PowerManagerService$WakeLock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2800
    iput-object p1, p0, Lcom/android/server/PowerManagerService$LockList;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2800
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method addLock(Lcom/android/server/PowerManagerService$WakeLock;)V
    .locals 2
    .parameter "wl"

    .prologue
    .line 2804
    iget-object v1, p1, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 2805
    .local v0, index:I
    if-gez v0, :cond_0

    .line 2806
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$LockList;->add(Ljava/lang/Object;)Z

    .line 2808
    :cond_0
    return-void
.end method

.method gatherState()I
    .locals 6

    .prologue
    .line 2833
    const/4 v2, 0x0

    .line 2834
    .local v2, result:I
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 2835
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2836
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerManagerService$WakeLock;

    .line 2837
    .local v3, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-boolean v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v4, :cond_0

    .line 2838
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LockList;->this$0:Lcom/android/server/PowerManagerService;

    iget v5, v3, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    #calls: Lcom/android/server/PowerManagerService;->isScreenLock(I)Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2839
    iget v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    or-int/2addr v2, v4

    .line 2835
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2843
    .end local v3           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_1
    return v2
.end method

.method getIndex(Landroid/os/IBinder;)I
    .locals 3
    .parameter "binder"

    .prologue
    .line 2822
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 2823
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2824
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 2828
    .end local v1           #i:I
    :goto_1
    return v1

    .line 2823
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2828
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method reactivateScreenLocksLocked()I
    .locals 6

    .prologue
    .line 2848
    const/4 v2, 0x0

    .line 2849
    .local v2, result:I
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 2850
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2851
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerManagerService$WakeLock;

    .line 2852
    .local v3, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LockList;->this$0:Lcom/android/server/PowerManagerService;

    iget v5, v3, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    #calls: Lcom/android/server/PowerManagerService;->isScreenLock(I)Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2853
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 2854
    iget v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    or-int/2addr v2, v4

    .line 2850
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2861
    .end local v3           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LockList;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$5602(Lcom/android/server/PowerManagerService;Z)Z

    .line 2862
    return v2
.end method

.method removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;
    .locals 2
    .parameter "binder"

    .prologue
    .line 2812
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 2813
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2814
    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService$LockList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 2816
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
