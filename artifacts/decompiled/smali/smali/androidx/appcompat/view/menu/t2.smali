.class public abstract Landroidx/appcompat/view/menu/t2;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public final a:Landroidx/appcompat/view/menu/u2;

.field public final b:Landroidx/appcompat/view/menu/k3;

.field public final c:Landroidx/appcompat/view/menu/a3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010176

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/t2;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/view/menu/v01;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/g01;->a(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/t2;->d:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/view/menu/y01;->t(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/view/menu/y01;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/y01;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y01;->v()V

    new-instance p1, Landroidx/appcompat/view/menu/u2;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/u2;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/t2;->a:Landroidx/appcompat/view/menu/u2;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/u2;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/view/menu/k3;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/k3;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/k3;->m(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    new-instance p1, Landroidx/appcompat/view/menu/a3;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/a3;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/t2;->c:Landroidx/appcompat/view/menu/a3;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/a3;->c(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/t2;->a(Landroidx/appcompat/view/menu/a3;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/a3;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/a3;->b(Landroid/text/method/KeyListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    invoke-super {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    invoke-super {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    invoke-super {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/a3;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-super {p0, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    invoke-super {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-super {p0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u2;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->b()V

    :cond_1
    return-void
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/c01;->p(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->a:Landroidx/appcompat/view/menu/u2;

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

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u2;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->k()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/view/menu/c3;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/t2;->c:Landroidx/appcompat/view/menu/a3;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/a3;->d(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->g(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/c01;->q(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->c:Landroidx/appcompat/view/menu/a3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/a3;->e(Z)V

    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->c:Landroidx/appcompat/view/menu/a3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/a3;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->w(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->x(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/t2;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/k3;->q(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
