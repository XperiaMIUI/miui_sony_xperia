.class public Landroid/widget/CheckBox;
.super Landroid/widget/CompoundButton;
.source "CheckBox.java"


# instance fields
.field private mLtrBackground:Landroid/graphics/drawable/Drawable;

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckBox;->mStyle:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->shouldMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CheckBox;->mLtrBackground:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/CheckBox;->mStyle:I

    sparse-switch v0, :sswitch_data_0

    const v0, 0x10800df

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const v0, 0x10801d7

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    :sswitch_1
    const v0, 0x1080184

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/CheckBox;->mLtrBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CheckBox;->mLtrBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101007e -> :sswitch_1
        0x1010082 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CheckBox;->mContext:Landroid/content/Context;

    const v2, 0x10404dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CheckBox;->mContext:Landroid/content/Context;

    const v2, 0x10404dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
