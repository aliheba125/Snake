.class public abstract Landroidx/appcompat/view/menu/w2;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/x2;

.field public final b:Landroidx/appcompat/view/menu/u2;

.field public final c:Landroidx/appcompat/view/menu/k3;

.field public d:Landroidx/appcompat/view/menu/b3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/v01;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/g01;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/view/menu/x2;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/x2;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/w2;->a:Landroidx/appcompat/view/menu/x2;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/x2;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/view/menu/u2;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/u2;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/w2;->b:Landroidx/appcompat/view/menu/u2;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/u2;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/view/menu/k3;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/k3;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/k3;->m(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/w2;->getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/b3;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->d:Landroidx/appcompat/view/menu/b3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/b3;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/b3;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/w2;->d:Landroidx/appcompat/view/menu/b3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->d:Landroidx/appcompat/view/menu/b3;

    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->b:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u2;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->b:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u2;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->b:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u2;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->a:Landroidx/appcompat/view/menu/x2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x2;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->a:Landroidx/appcompat/view/menu/x2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x2;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->k()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/w2;->getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/b3;->c(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->b:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->b:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->g(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/w2;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/w2;->a:Landroidx/appcompat/view/menu/x2;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/x2;->e()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_0
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/w2;->getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/b3;->d(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/w2;->getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/b3;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->b:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->b:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->a:Landroidx/appcompat/view/menu/x2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x2;->f(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->a:Landroidx/appcompat/view/menu/x2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/x2;->g(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->w(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->x(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/w2;->c:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    return-void
.end method
