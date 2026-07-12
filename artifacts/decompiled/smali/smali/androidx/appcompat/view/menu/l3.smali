.class public Landroidx/appcompat/view/menu/l3;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l3$a;,
        Landroidx/appcompat/view/menu/l3$d;,
        Landroidx/appcompat/view/menu/l3$c;,
        Landroidx/appcompat/view/menu/l3$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/u2;

.field public final b:Landroidx/appcompat/view/menu/k3;

.field public final c:Landroidx/appcompat/view/menu/j3;

.field public d:Landroidx/appcompat/view/menu/b3;

.field public e:Z

.field public f:Landroidx/appcompat/view/menu/l3$a;

.field public g:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/l3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/l3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Landroidx/appcompat/view/menu/v01;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/l3;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l3;->f:Landroidx/appcompat/view/menu/l3$a;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/g01;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroidx/appcompat/view/menu/u2;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/u2;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/l3;->a:Landroidx/appcompat/view/menu/u2;

    .line 6
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/u2;->e(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroidx/appcompat/view/menu/k3;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/k3;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    .line 8
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/k3;->m(Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    .line 10
    new-instance p1, Landroidx/appcompat/view/menu/j3;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/j3;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/l3;->c:Landroidx/appcompat/view/menu/j3;

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/view/menu/l3;->getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/b3;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/l3;)I
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/l3;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void
.end method

.method public static synthetic g(Landroidx/appcompat/view/menu/l3;)I
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result p0

    return p0
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->d:Landroidx/appcompat/view/menu/b3;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/b3;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/b3;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l3;->d:Landroidx/appcompat/view/menu/b3;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->d:Landroidx/appcompat/view/menu/b3;

    return-object v0
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/l3;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    return-void
.end method

.method public static synthetic i(Landroidx/appcompat/view/menu/l3;IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineHeight(IF)V

    return-void
.end method

.method public static synthetic j(Landroidx/appcompat/view/menu/l3;)I
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroidx/appcompat/view/menu/l3;)[I
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/appcompat/view/menu/l3;)I
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result p0

    return p0
.end method

.method public static synthetic m(Landroidx/appcompat/view/menu/l3;)Landroid/view/textclassifier/TextClassifier;
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/appcompat/view/menu/l3;IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method public static synthetic o(Landroidx/appcompat/view/menu/l3;[II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method public static synthetic p(Landroidx/appcompat/view/menu/l3;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    return-void
.end method

.method public static synthetic q(Landroidx/appcompat/view/menu/l3;Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/u2;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->b()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/l3$a;->f()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->e()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/l3$a;->i()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->f()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/l3$a;->k()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->g()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/l3$a;->c()[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->h()[I

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/l3$a;->h()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->i()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/c01;->p(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/c01;->b(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/c01;->c(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getSuperCaller()Landroidx/appcompat/view/menu/l3$a;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->f:Landroidx/appcompat/view/menu/l3$a;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/l3$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l3$d;-><init>(Landroidx/appcompat/view/menu/l3;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l3;->f:Landroidx/appcompat/view/menu/l3$a;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/l3$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l3$c;-><init>(Landroidx/appcompat/view/menu/l3;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l3;->f:Landroidx/appcompat/view/menu/l3$a;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->f:Landroidx/appcompat/view/menu/l3$a;

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->a:Landroidx/appcompat/view/menu/u2;

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

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->a:Landroidx/appcompat/view/menu/u2;

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

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k3;->k()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->r()V

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/l3$a;->e()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParamsCompat()Landroidx/appcompat/view/menu/kj0$a;
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/c01;->e(Landroid/widget/TextView;)Landroidx/appcompat/view/menu/kj0$a;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v1, p0, v0, p1}, Landroidx/appcompat/view/menu/k3;->r(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {v0, p1, p0}, Landroidx/appcompat/view/menu/c3;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

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

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/k3;->o(ZIIII)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->r()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    sget-boolean p2, Landroidx/appcompat/view/menu/p61;->a:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->c()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->g:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/appcompat/view/menu/l3;->g:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/appcompat/view/menu/c01;->m(Landroid/widget/TextView;Landroidx/appcompat/view/menu/kj0;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l3;->getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/b3;->c(Z)V

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/l3$a;->g(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/k3;->t(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/l3$a;->a([II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/k3;->u([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/l3$a;->l(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->v(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->g(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 6
    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 7
    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/view/menu/l3;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_4
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 6
    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 7
    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/view/menu/l3;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->p()V

    :cond_4
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz p1, :cond_0

    .line 2
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

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l3;->getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/b3;->d(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l3;->getEmojiTextViewHelper()Landroidx/appcompat/view/menu/b3;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/b3;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/l3$a;->j(I)V

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/l3$a;->d(I)V

    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/c01;->k(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLineHeight(IF)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/l3$a;->m(IF)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/c01;->l(Landroid/widget/TextView;IF)V

    :goto_0
    return-void
.end method

.method public setPrecomputedText(Landroidx/appcompat/view/menu/kj0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/c01;->m(Landroid/widget/TextView;Landroidx/appcompat/view/menu/kj0;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->a:Landroidx/appcompat/view/menu/u2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/u2;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->w(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k3;->x(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/k3;->b()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/k3;->q(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l3;->getSuperCaller()Landroidx/appcompat/view/menu/l3$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/l3$a;->b(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroidx/appcompat/view/menu/kj0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/appcompat/view/menu/l3;->g:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTextMetricsParamsCompat(Landroidx/appcompat/view/menu/kj0$a;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/c01;->o(Landroid/widget/TextView;Landroidx/appcompat/view/menu/kj0$a;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/p61;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/l3;->b:Landroidx/appcompat/view/menu/k3;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/k3;->A(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/l3;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/appcompat/view/menu/s21;->a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/l3;->e:Z

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/l3;->e:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/l3;->e:Z

    throw p1
.end method
