.class public abstract Landroidx/appcompat/view/menu/z2;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kg0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/z2$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/u2;

.field public final b:Landroidx/appcompat/view/menu/k3;

.field public final c:Landroidx/appcompat/view/menu/j3;

.field public final d:Landroidx/appcompat/view/menu/d01;

.field public final e:Landroidx/appcompat/view/menu/a3;

.field public f:Landroidx/appcompat/view/menu/z2$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/v01;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/g01;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/view/menu/u2;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/u2;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z2;->a:Landroidx/appcompat/view/menu/u2;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/u2;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/view/menu/k3;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/k3;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/k3;->m(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    new-instance p1, Landroidx/appcompat/view/menu/j3;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/j3;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z2;->c:Landroidx/appcompat/view/menu/j3;

    new-instance p1, Landroidx/appcompat/view/menu/d01;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/d01;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z2;->d:Landroidx/appcompat/view/menu/d01;

    new-instance p1, Landroidx/appcompat/view/menu/a3;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/a3;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z2;->e:Landroidx/appcompat/view/menu/a3;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/a3;->c(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/z2;->d(Landroidx/appcompat/view/menu/a3;)V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/z2;)Landroid/view/textclassifier/TextClassifier;
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/z2;Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method private getSuperCaller()Landroidx/appcompat/view/menu/z2$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->f:Landroidx/appcompat/view/menu/z2$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/z2$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/z2$a;-><init>(Landroidx/appcompat/view/menu/z2;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/z2;->f:Landroidx/appcompat/view/menu/z2$a;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->f:Landroidx/appcompat/view/menu/z2$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/uf;)Landroidx/appcompat/view/menu/uf;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->d:Landroidx/appcompat/view/menu/d01;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/d01;->a(Landroid/view/View;Landroidx/appcompat/view/menu/uf;)Landroidx/appcompat/view/menu/uf;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/appcompat/view/menu/a3;)V
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

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u2;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

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

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->a:Landroidx/appcompat/view/menu/u2;

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

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->a:Landroidx/appcompat/view/menu/u2;

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

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->k()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .line 2
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z2;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/z2;->getSuperCaller()Landroidx/appcompat/view/menu/z2$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/z2$a;->a()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v1, p0, v0, p1}, Landroidx/appcompat/view/menu/k3;->r(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {v0, p1, p0}, Landroidx/appcompat/view/menu/c3;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/m51;->A(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/mn;->c(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroidx/appcompat/view/menu/a50;->c(Landroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/z2;->e:Landroidx/appcompat/view/menu/a3;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/a3;->d(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/h3;->a(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/h3;->b(Landroid/widget/TextView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->g(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

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

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->e:Landroidx/appcompat/view/menu/a3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/a3;->e(Z)V

    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->e:Landroidx/appcompat/view/menu/a3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/a3;->a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->w(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->x(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/z2;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/k3;->q(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/z2;->getSuperCaller()Landroidx/appcompat/view/menu/z2$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/z2$a;->b(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method
