.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$EventHandler;,
        Landroid/media/RemoteControlClient$MetadataEditor;
    }
.end annotation


# static fields
.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field private static final METADATA_KEYS_TYPE_LONG:[I = null

.field private static final METADATA_KEYS_TYPE_STRING:[I = null

.field private static final MSG_NEW_CURRENT_CLIENT_GEN:I = 0x6

.field private static final MSG_NEW_INTERNAL_CLIENT_GEN:I = 0x5

.field private static final MSG_PLUG_DISPLAY:I = 0x7

.field private static final MSG_REQUEST_ARTWORK:I = 0x4

.field private static final MSG_REQUEST_METADATA:I = 0x2

.field private static final MSG_REQUEST_PLAYBACK_STATE:I = 0x1

.field private static final MSG_REQUEST_TRANSPORTCONTROL:I = 0x3

.field private static final MSG_UNPLUG_DISPLAY:I = 0x8

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"


# instance fields
.field private final ARTWORK_DEFAULT_SIZE:I

.field private final ARTWORK_INVALID_SIZE:I

.field private mArtwork:Landroid/graphics/Bitmap;

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

.field private mIRCC:Landroid/media/IRemoteControlClient;

.field private mInternalClientGenId:I

.field private mMetadata:Landroid/os/Bundle;

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mTransportControlFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_STRING:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_LONG:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "mediaButtonIntent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    iput v5, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iput v3, p0, Landroid/media/RemoteControlClient;->ARTWORK_DEFAULT_SIZE:I

    iput v4, p0, Landroid/media/RemoteControlClient;->ARTWORK_INVALID_SIZE:I

    iput v3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    iput v3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    iput v5, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    iput v4, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    const/4 v1, -0x2

    iput v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    new-instance v1, Landroid/media/RemoteControlClient$1;

    invoke-direct {v1, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const-string v1, "RemoteControlClient"

    const-string v2, "RemoteControlClient() couldn\'t find main application thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 5
    .parameter "mediaButtonIntent"
    .parameter "looper"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    iput v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iput v2, p0, Landroid/media/RemoteControlClient;->ARTWORK_DEFAULT_SIZE:I

    iput v3, p0, Landroid/media/RemoteControlClient;->ARTWORK_INVALID_SIZE:I

    iput v2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    iput v2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    iput v4, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    iput v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    const/4 v0, -0x2

    iput v0, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    sget-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_STRING:[I

    return-object v0
.end method

.method static synthetic access$100(I[I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1}, Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendTransportControlFlags_syncCacheLock()V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/RemoteControlClient;Ljava/lang/Integer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onNewInternalClientGen(Ljava/lang/Integer;II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/RemoteControlClient;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    sget-object v0, Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_LONG:[I

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/RemoteControlClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/RemoteControlClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    return v0
.end method

.method static synthetic access$500(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$800(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock()V

    return-void
.end method

.method private detachFromDisplay_syncCacheLock()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iput v1, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    iput v1, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    return-void
.end method

.method private onNewCurrentClientGen(I)V
    .locals 2
    .parameter "clientGeneration"

    .prologue
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onNewInternalClientGen(Ljava/lang/Integer;II)V
    .locals 2
    .parameter "clientGeneration"
    .parameter "artWidth"
    .parameter "artHeight"

    .prologue
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-lez p2, :cond_0

    iput p2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    iput p3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPlugDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 2
    .parameter "rcd"

    .prologue
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 3
    .parameter "rcd"

    .prologue
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v0}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    const/16 v0, 0x100

    iput v0, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    const/16 v0, 0x100

    iput v0, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "bitmap"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .local v8, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .local v2, height:I
    move/from16 v0, p2

    if-gt v8, v0, :cond_0

    move/from16 v0, p3

    if-le v2, v0, :cond_1

    :cond_0
    move/from16 v0, p2

    int-to-float v9, v0

    int-to-float v10, v8

    div-float/2addr v9, v10

    move/from16 v0, p3

    int-to-float v10, v0

    int-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .local v7, scale:F
    int-to-float v9, v8

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .local v4, newWidth:I
    int-to-float v9, v2

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .local v3, newHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v4, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, outBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .local v6, paint:Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 p1, v5

    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v3           #newHeight:I
    .end local v4           #newWidth:I
    .end local v5           #outBitmap:Landroid/graphics/Bitmap;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #scale:F
    .end local v8           #width:I
    :cond_1
    return-object p1
.end method

.method private sendArtwork_syncCacheLock()V
    .locals 4

    .prologue
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    iget v2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    invoke-direct {p0, v1, v2, v3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3}, Landroid/media/IRemoteControlDisplay;->setArtwork(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendArtwork(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_0
.end method

.method private sendMetadataWithArtwork_syncCacheLock()V
    .locals 5

    .prologue
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    iget v2, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedWidth:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mArtworkExpectedHeight:I

    invoke-direct {p0, v1, v2, v3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setAllMetadata(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_0
.end method

.method private sendMetadata_syncCacheLock()V
    .locals 4

    .prologue
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendPlaybackState(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_0
.end method

.method private sendPlaybackState_syncCacheLock()V
    .locals 6

    .prologue
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in setPlaybackState(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_0
.end method

.method private sendTransportControlFlags_syncCacheLock()V
    .locals 4

    .prologue
    iget v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget v2, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    invoke-interface {v1, v2, v3}, Landroid/media/IRemoteControlDisplay;->setTransportControlFlags(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in sendTransportControlFlags(), dead display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/RemoteControlClient;->detachFromDisplay_syncCacheLock()V

    goto :goto_0
.end method

.method private static validTypeForKey(I[I)Z
    .locals 3
    .parameter "key"
    .parameter "validKeys"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    aget v2, p1, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 5
    .parameter "startEmpty"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-direct {v0, p0, v4}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V

    .local v0, editor:Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    iput-object v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    goto :goto_0
.end method

.method public getIRemoteControlClient()Landroid/media/IRemoteControlClient;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public setPlaybackState(I)V
    .locals 4
    .parameter "state"

    .prologue
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTransportControlFlags(I)V
    .locals 2
    .parameter "transportControlFlags"

    .prologue
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendTransportControlFlags_syncCacheLock()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
