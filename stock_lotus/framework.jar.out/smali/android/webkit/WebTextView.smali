.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$AutoCompleteAdapter;,
        Landroid/webkit/WebTextView$WebTextViewLayout;,
        Landroid/webkit/WebTextView$BackgroundDrawable;,
        Landroid/webkit/WebTextView$MyResultReceiver;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64

.field private static final EMAIL:I = 0x4

.field static final FORM_NOT_AUTOFILLABLE:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NORMAL_TEXT_FIELD:I = 0x0

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final NUMBER:I = 0x5

.field private static final PASSWORD:I = 0x2

.field private static final SEARCH:I = 0x3

.field private static final TELEPHONE:I = 0x6

.field private static final TEXT_AREA:I = 0x1

.field private static final URL:I = 0x7


# instance fields
.field private mAutoFillProfileIsSet:Z

.field private mAutoFillable:Z

.field private mCharacter:[C

.field private mDelSelEnd:I

.field private mDelSelStart:I

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotDelete:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mInsideRemove:Z

.field private mMaxLength:I

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mQueryId:I

.field private mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

.field private mRingInset:I

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;I)V
    .locals 7
    .parameter "context"
    .parameter "webView"
    .parameter "autoFillQueryId"

    .prologue
    const/4 v5, -0x1

    .line 186
    const/4 v3, 0x0

    const v4, 0x10102b9

    invoke-direct {p0, p1, v3, v4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    const/4 v3, 0x1

    new-array v3, v3, [C

    iput-object v3, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 187
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 188
    iput v5, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 189
    invoke-virtual {p0, p3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    .line 192
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 193
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x101

    or-int/lit16 v3, v3, 0x80

    or-int/lit8 v0, v3, 0x4

    .line 195
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 200
    const/high16 v3, -0x100

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setTextColor(I)V

    .line 201
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setIncludeFontPadding(Z)V

    .line 206
    new-instance v3, Landroid/webkit/WebTextView$1;

    invoke-direct {v3, p0}, Landroid/webkit/WebTextView$1;-><init>(Landroid/webkit/WebTextView;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    .line 216
    new-instance v3, Landroid/webkit/WebTextView$MyResultReceiver;

    iget-object v4, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebTextView$MyResultReceiver;-><init>(Landroid/webkit/WebTextView;Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    .line 217
    const/high16 v3, 0x4000

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v3, v4

    .line 218
    .local v2, ringWidth:F
    float-to-int v3, v2

    iput v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    .line 219
    new-instance v3, Landroid/webkit/WebTextView$BackgroundDrawable;

    iget v4, p0, Landroid/webkit/WebTextView;->mRingInset:I

    invoke-direct {v3, v4}, Landroid/webkit/WebTextView$BackgroundDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 222
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Landroid/webkit/WebTextView;->mQueryId:I

    return v0
.end method

.method private static hasCombiningAccent([Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "events"

    .prologue
    .line 720
    move-object v0, p0

    .local v0, arr$:[Landroid/view/KeyEvent;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 721
    .local v2, keyEvent:Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    const/high16 v5, -0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 722
    const/4 v4, 0x1

    .line 725
    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    :goto_1
    return v4

    .line 720
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private lineUpScroll()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 462
    .local v0, layout:Landroid/text/Layout;
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 463
    iget-boolean v3, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v3, :cond_2

    .line 465
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 470
    .local v1, maxScrollX:F
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    iget v2, p0, Landroid/webkit/WebTextView;->mScrollX:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->scrollFocusedTextInputX(F)V

    .line 477
    .end local v1           #maxScrollX:F
    :cond_1
    :goto_0
    return-void

    .line 474
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v3, p0, Landroid/webkit/WebTextView;->mScrollY:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->scrollFocusedTextInputY(I)V

    goto :goto_0
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 872
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 873
    return-void
.end method

.method private setMaxLength(I)V
    .locals 3
    .parameter "maxLength"

    .prologue
    .line 962
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 963
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 964
    sget-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 969
    :goto_0
    return-void

    .line 966
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method static urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "urlString"

    .prologue
    .line 1206
    const/4 v1, 0x0

    .line 1208
    .local v1, url:Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #url:Ljava/net/URL;
    .local v2, url:Ljava/net/URL;
    move-object v1, v2

    .line 1213
    .end local v2           #url:Ljava/net/URL;
    .restart local v1       #url:Ljava/net/URL;
    :goto_0
    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    .local v0, e:Ljava/net/MalformedURLException;
    const-string/jumbo v3, "webtextview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1213
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 429
    :goto_0
    return v1

    .line 281
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v7, 0x1

    .line 282
    .local v7, down:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 284
    .local v9, keyCode:I
    const/4 v8, 0x0

    .line 285
    .local v8, isArrowKey:Z
    packed-switch v9, :pswitch_data_0

    .line 294
    :goto_2
    const/16 v1, 0x3d

    if-ne v1, v9, :cond_3

    .line 295
    if-eqz v7, :cond_1

    .line 296
    const/4 v1, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 298
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 281
    .end local v7           #down:Z
    .end local v8           #isArrowKey:Z
    .end local v9           #keyCode:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 290
    .restart local v7       #down:Z
    .restart local v8       #isArrowKey:Z
    .restart local v9       #keyCode:I
    :pswitch_0
    const/4 v8, 0x1

    goto :goto_2

    .line 300
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 301
    .local v15, text:Landroid/text/Spannable;
    invoke-static {v15}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    .line 302
    .local v12, oldStart:I
    invoke-static {v15}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    .line 307
    .local v11, oldEnd:I
    const/16 v1, 0x43

    if-ne v1, v9, :cond_5

    .line 308
    if-nez v12, :cond_4

    if-nez v11, :cond_4

    .line 309
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 310
    const/4 v1, 0x1

    goto :goto_0

    .line 312
    :cond_4
    if-eqz v7, :cond_5

    .line 313
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 314
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    .line 315
    move-object/from16 v0, p0

    iput v11, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    .line 319
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x42

    if-eq v1, v9, :cond_6

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_9

    .line 321
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 322
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 324
    :cond_7
    if-nez v7, :cond_8

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 330
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 331
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 333
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 334
    :cond_9
    const/16 v1, 0x17

    if-ne v1, v9, :cond_c

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 337
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 340
    :cond_a
    if-nez v7, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 344
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 348
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_d

    .line 349
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 352
    :cond_d
    invoke-interface {v15}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 353
    .local v3, oldLength:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-ne v3, v1, :cond_10

    const/4 v10, 0x1

    .line 358
    .local v10, maxedOut:Z
    :goto_3
    if-eqz v10, :cond_11

    if-eq v11, v12, :cond_11

    .line 359
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 363
    .local v13, oldText:Ljava/lang/String;
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 374
    const/16 v1, 0x42

    if-eq v1, v9, :cond_e

    const/16 v1, 0xa0

    if-ne v1, v9, :cond_f

    .line 379
    :cond_e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 381
    :cond_f
    if-eqz v10, :cond_13

    if-nez v8, :cond_13

    const/16 v1, 0x43

    if-eq v9, v1, :cond_13

    .line 382
    if-ne v11, v12, :cond_12

    .line 384
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 353
    .end local v10           #maxedOut:Z
    .end local v13           #oldText:Ljava/lang/String;
    :cond_10
    const/4 v10, 0x0

    goto :goto_3

    .line 361
    .restart local v10       #maxedOut:Z
    :cond_11
    const-string v13, ""

    .restart local v13       #oldText:Ljava/lang/String;
    goto :goto_4

    .line 385
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    .line 393
    .local v14, span:Landroid/text/Spannable;
    invoke-static {v14}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 394
    .local v5, newStart:I
    invoke-static {v14}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 395
    .local v6, newEnd:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 397
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 412
    .end local v5           #newStart:I
    .end local v6           #newEnd:I
    .end local v14           #span:Landroid/text/Spannable;
    :cond_13
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 416
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    if-eqz v1, :cond_15

    if-nez v7, :cond_15

    .line 417
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 420
    :cond_15
    if-eqz v8, :cond_17

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 426
    if-eqz v7, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 429
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method ensureLayout()V
    .locals 6

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 435
    iget v1, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    iget v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 436
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 437
    .local v0, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 438
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/webkit/WebTextView;->layout(IIII)V

    .line 442
    .end local v0           #params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/webkit/WebTextView;->mReceiver:Landroid/webkit/WebTextView$MyResultReceiver;

    return-object v0
.end method

.method isSameTextField(I)Z
    .locals 1
    .parameter "ptr"

    .prologue
    .line 454
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSelectUsingMagnifierAllowed()Z
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x1

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 0
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 484
    invoke-super/range {p0 .. p6}, Landroid/widget/AutoCompleteTextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 486
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 487
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 526
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 527
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 533
    :cond_0
    return-object v0
.end method

.method public onEditorAction(I)V
    .locals 4
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 538
    packed-switch p1, :pswitch_data_0

    .line 564
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 540
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 544
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 545
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 549
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_0

    .line 554
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 556
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 558
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 569
    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 570
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 571
    if-eqz p1, :cond_1

    .line 572
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setActive(Z)V

    .line 576
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 577
    return-void

    .line 573
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 585
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 587
    .local v0, settings:Landroid/webkit/WebSettings;
    iget-boolean v1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v2, p0, Landroid/webkit/WebTextView;->mQueryId:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->autoFillForm(I)V

    .line 598
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_0
    :goto_0
    return-void

    .line 594
    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 603
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 604
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 608
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 615
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 617
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 17
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 621
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 622
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 627
    .local v13, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    if-nez p4, :cond_5

    .line 633
    if-lez p3, :cond_4

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 636
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    if-eqz v2, :cond_3

    .line 637
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 638
    add-int v12, p2, p3

    .line 639
    .local v12, oldEnd:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelEnd:I

    if-ne v2, v12, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebTextView;->mDelSelStart:I

    if-ne v2, v12, :cond_3

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 644
    :cond_2
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 646
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 653
    .end local v12           #oldEnd:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 655
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    goto :goto_0

    .line 665
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebTextView;->mGotDelete:Z

    .line 668
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_6

    add-int/lit8 v2, p4, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 671
    .local v14, replaceButOne:Ljava/lang/String;
    add-int v2, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 673
    .local v15, replacedString:Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 675
    add-int p2, p2, p3

    .line 676
    const/16 p3, 0x0

    .line 677
    const/16 p4, 0x1

    .line 680
    .end local v14           #replaceButOne:Ljava/lang/String;
    .end local v15           #replacedString:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 684
    const/4 v8, 0x0

    .line 685
    .local v8, events:[Landroid/view/KeyEvent;
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 686
    add-int v2, p2, p4

    add-int/lit8 v2, v2, -0x1

    add-int v3, p2, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 687
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v10

    .line 688
    .local v10, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    invoke-virtual {v10, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v8

    .line 690
    .end local v10           #kmap:Landroid/view/KeyCharacterMap;
    :cond_7
    if-eqz v8, :cond_a

    invoke-static {v8}, Landroid/webkit/WebTextView;->hasCombiningAccent([Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v16, 0x1

    .line 691
    .local v16, useKeyEvents:Z
    :goto_1
    if-eqz v16, :cond_b

    .line 698
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v2, :cond_8

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v3, p2, p3

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->setSelection(II)V

    .line 701
    :cond_8
    array-length v11, v8

    .line 702
    .local v11, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v11, :cond_c

    .line 705
    aget-object v2, v8, v9

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 706
    aget-object v2, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 702
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 690
    .end local v9           #i:I
    .end local v11           #length:I
    .end local v16           #useKeyEvents:Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_1

    .line 710
    .restart local v16       #useKeyEvents:Z
    :cond_b
    add-int v2, p2, p4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 712
    .local v5, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    add-int v4, p2, p3

    add-int v6, p2, p4

    add-int v7, p2, p4

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 716
    .end local v5           #replace:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 814
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 732
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 738
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 739
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 740
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 741
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_0

    .line 744
    :pswitch_1
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_0

    .line 747
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 748
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 749
    const/4 v8, 0x0

    goto :goto_1

    .line 751
    :cond_0
    iget-object v8, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 752
    .local v6, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 753
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 754
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 755
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 756
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 757
    .local v1, dx:I
    iget v8, p0, Landroid/webkit/WebTextView;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 761
    .local v2, dy:I
    div-int/lit8 v7, v6, 0x2

    .line 762
    .local v7, smallerSlop:I
    if-gt v1, v7, :cond_1

    if-le v2, v7, :cond_2

    .line 764
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 765
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 766
    const/4 v8, 0x1

    goto :goto_1

    .line 768
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 773
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 775
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_5

    .line 777
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_4

    .line 778
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 780
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 782
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 783
    .local v5, scrolled:Z
    if-eqz v5, :cond_5

    .line 784
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 785
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 786
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 789
    .end local v5           #scrolled:Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 792
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v6           #slop:I
    .end local v7           #smallerSlop:I
    :pswitch_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 793
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_6

    .line 794
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 795
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 797
    :cond_6
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_7

    .line 800
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 801
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_7

    .line 802
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 806
    :cond_7
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_8

    .line 807
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 809
    :cond_8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_0

    .line 730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 819
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 832
    :cond_0
    :goto_0
    return v2

    .line 822
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 825
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 826
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 827
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 838
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 847
    iget-object v2, p0, Landroid/webkit/WebTextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 848
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 851
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 852
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v1

    .line 853
    .local v1, isFocused:Z
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 854
    if-eqz v1, :cond_1

    .line 855
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 857
    :cond_1
    iput-boolean v3, p0, Landroid/webkit/WebTextView;->mInsideRemove:Z

    .line 858
    iget-object v2, p0, Landroid/webkit/WebTextView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 859
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 864
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 880
    if-eqz p1, :cond_1

    .line 881
    #calls: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$200(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 882
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p0, p0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 887
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->showDropDown()V

    .line 891
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 892
    return-void

    .line 885
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 889
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method setAutoFillProfileIsSet(Z)V
    .locals 0
    .parameter "autoFillProfileIsSet"

    .prologue
    .line 1201
    iput-boolean p1, p0, Landroid/webkit/WebTextView;->mAutoFillProfileIsSet:Z

    .line 1202
    return-void
.end method

.method public setAutoFillable(I)V
    .locals 1
    .parameter "queryId"

    .prologue
    .line 264
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    .line 266
    iput p1, p0, Landroid/webkit/WebTextView;->mQueryId:I

    .line 267
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDefaultSelection()V
    .locals 3

    .prologue
    .line 933
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 934
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 935
    .local v0, selection:I
    :goto_0
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 945
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 946
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 951
    :cond_0
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->incrementTextGeneration()V

    .line 952
    :cond_1
    return-void

    .line 934
    .end local v0           #selection:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 949
    .restart local v0       #selection:I
    :cond_3
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method public setGravityForRtl(Z)V
    .locals 4
    .parameter "isRtlWebLayout"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x3

    .line 1217
    iget-boolean v3, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v3, :cond_0

    const/16 v0, 0x10

    .line 1224
    .local v0, gravity:I
    :goto_0
    if-eqz p1, :cond_2

    .line 1225
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->shouldMirror()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    .line 1229
    :goto_2
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 1230
    return-void

    .line 1217
    .end local v0           #gravity:I
    :cond_0
    const/16 v0, 0x30

    goto :goto_0

    .restart local v0       #gravity:I
    :cond_1
    move v1, v2

    .line 1225
    goto :goto_1

    .line 1227
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->shouldMirror()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    or-int/2addr v0, v2

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 957
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 959
    return-void
.end method

.method setNodePointer(I)V
    .locals 1
    .parameter "ptr"

    .prologue
    .line 978
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-eq p1, v0, :cond_0

    .line 979
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 982
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 271
    iget v0, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v1, p2

    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v2, p3

    iget v3, p0, Landroid/webkit/WebTextView;->mRingInset:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 273
    return-void
.end method

.method setRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v4, 0x4000

    .line 997
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->shouldMirror()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 998
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int p1, v2, p3

    .line 1000
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1001
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p1, v2

    .line 1002
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    sub-int/2addr p2, v2

    .line 1003
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    .line 1004
    iget v2, p0, Landroid/webkit/WebTextView;->mRingInset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    .line 1005
    const/4 v1, 0x0

    .line 1006
    .local v1, needsUpdate:Z
    if-nez v0, :cond_3

    .line 1007
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1018
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1020
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    :cond_2
    :goto_1
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 1026
    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 1027
    return-void

    .line 1009
    :cond_3
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v2, p1, :cond_4

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v2, p2, :cond_4

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v2, p3, :cond_4

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-eq v2, p4, :cond_1

    .line 1011
    :cond_4
    const/4 v1, 0x1

    .line 1012
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1013
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1014
    iput p3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 1015
    iput p4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1021
    :cond_5
    if-eqz v1, :cond_2

    .line 1022
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method setSelectionFromWebKit(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1033
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1035
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 1036
    .local v0, length:I
    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 1037
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 1038
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1039
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_0
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1062
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;Z)V

    .line 1063
    return-void
.end method

.method setTextAndKeepSelection(Ljava/lang/String;Z)V
    .locals 7
    .parameter "text"
    .parameter "restartInput"

    .prologue
    const/4 v6, 0x0

    .line 1072
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1073
    .local v0, edit:Landroid/text/Editable;
    iput-object p1, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 1074
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1077
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1078
    .local v4, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1079
    .local v3, selEnd:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1080
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v0, v6, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1081
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1082
    .local v2, newLength:I
    if-le v4, v2, :cond_1

    move v4, v2

    .line 1083
    :cond_1
    if-le v3, v2, :cond_2

    move v3, v2

    .line 1084
    :cond_2
    invoke-static {v0, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1085
    iput-boolean v6, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 1086
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1087
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_3

    .line 1090
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1092
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_0
.end method

.method setType(I)V
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 1104
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v6, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    const/4 v5, 0x1

    .line 1106
    .local v5, single:Z
    const/4 v3, -0x1

    .line 1107
    .local v3, maxLength:I
    const/16 v2, 0xa1

    .line 1109
    .local v2, inputType:I
    const/high16 v1, 0x1200

    .line 1111
    .local v1, imeOptions:I
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateIsSpellcheck()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1112
    const/high16 v6, 0x8

    or-int/2addr v2, v6

    .line 1114
    :cond_2
    if-eq v7, p1, :cond_3

    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1116
    const/high16 v6, 0x800

    or-int/2addr v1, v6

    .line 1118
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1161
    or-int/lit8 v1, v1, 0x2

    .line 1164
    :goto_1
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1165
    invoke-virtual {p0, v7}, Landroid/webkit/WebTextView;->setThreshold(I)V

    .line 1166
    const/4 v0, 0x0

    .line 1167
    .local v0, autoComplete:Z
    if-eqz v5, :cond_5

    .line 1168
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v7

    iget v8, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 1170
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v3

    .line 1171
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateIsAutoComplete()Z

    move-result v0

    .line 1172
    const/4 v6, 0x2

    if-eq p1, v6, :cond_5

    iget-boolean v6, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    if-nez v6, :cond_4

    if-eqz v0, :cond_5

    .line 1173
    :cond_4
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v4

    .line 1174
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1175
    const/high16 v6, 0x1

    or-int/2addr v2, v6

    .line 1176
    iget-object v6, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v7, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mAutoFillable:Z

    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;IZZ)V

    .line 1181
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1182
    invoke-direct {p0, v3}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1183
    invoke-virtual {p0, v5}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1184
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1185
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->clearComposingText()V

    .line 1186
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1187
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 1188
    if-nez v0, :cond_0

    .line 1189
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    .line 1120
    .end local v0           #autoComplete:Z
    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    .line 1121
    goto :goto_1

    .line 1123
    :pswitch_1
    const/4 v5, 0x0

    .line 1124
    const v6, 0x2c000

    or-int/2addr v2, v6

    .line 1127
    or-int/lit8 v1, v1, 0x1

    .line 1128
    goto :goto_1

    .line 1130
    :pswitch_2
    or-int/lit16 v2, v2, 0xe0

    .line 1131
    or-int/lit8 v1, v1, 0x2

    .line 1132
    goto :goto_1

    .line 1134
    :pswitch_3
    or-int/lit8 v1, v1, 0x3

    .line 1135
    goto :goto_1

    .line 1138
    :pswitch_4
    const/16 v2, 0xd1

    .line 1140
    or-int/lit8 v1, v1, 0x2

    .line 1141
    goto :goto_1

    .line 1144
    :pswitch_5
    const/16 v2, 0x3002

    .line 1148
    or-int/lit8 v1, v1, 0x5

    .line 1149
    goto :goto_1

    .line 1152
    :pswitch_6
    const/4 v2, 0x3

    .line 1153
    or-int/lit8 v1, v1, 0x5

    .line 1154
    goto/16 :goto_1

    .line 1158
    :pswitch_7
    or-int/lit8 v1, v1, 0x2

    .line 1159
    goto/16 :goto_1

    .line 1118
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
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method updateTextSize()V
    .locals 3

    .prologue
    .line 1047
    const-string/jumbo v1, "updateTextSize should only be called from mWebView, so mWebView should never be null!"

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1051
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v0, v1, v2

    .line 1053
    .local v0, size:F
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 1054
    return-void
.end method
