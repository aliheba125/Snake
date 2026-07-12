.class public Landroidx/appcompat/view/menu/vb;
.super Landroidx/appcompat/view/menu/oo;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Landroid/animation/TimeInterpolator;

.field public final h:Landroid/animation/TimeInterpolator;

.field public i:Landroid/widget/EditText;

.field public final j:Landroid/view/View$OnClickListener;

.field public final k:Landroid/view/View$OnFocusChangeListener;

.field public l:Landroid/animation/AnimatorSet;

.field public m:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/a;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/oo;-><init>(Lcom/google/android/material/textfield/a;)V

    new-instance v0, Landroidx/appcompat/view/menu/tb;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/tb;-><init>(Landroidx/appcompat/view/menu/vb;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/vb;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Landroidx/appcompat/view/menu/ub;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ub;-><init>(Landroidx/appcompat/view/menu/vb;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/vb;->k:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/zl0;->w:I

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/zd0;->f(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/vb;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/zl0;->w:I

    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/zd0;->f(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/vb;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/zl0;->A:I

    sget-object v2, Landroidx/appcompat/view/menu/j2;->a:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/zd0;->g(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/vb;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroidx/appcompat/view/menu/zl0;->z:I

    sget-object v1, Landroidx/appcompat/view/menu/j2;->d:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/zd0;->g(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/vb;->h:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static synthetic v(Landroidx/appcompat/view/menu/vb;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/vb;->F(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic w(Landroidx/appcompat/view/menu/vb;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/vb;->G(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Landroidx/appcompat/view/menu/vb;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/vb;->E(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic y(Landroidx/appcompat/view/menu/vb;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/vb;->H(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic z(Landroidx/appcompat/view/menu/vb;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vb;->I()V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->b:Lcom/google/android/material/textfield/a;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/a;->F()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/vb;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/vb;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/vb;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/vb;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/vb;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/vb;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/vb;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final varargs B([F)Landroid/animation/ValueAnimator;
    .locals 2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vb;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v0, p0, Landroidx/appcompat/view/menu/vb;->e:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/appcompat/view/menu/sb;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/sb;-><init>(Landroidx/appcompat/view/menu/vb;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final C()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/vb;->h:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Landroidx/appcompat/view/menu/vb;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/appcompat/view/menu/rb;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/rb;-><init>(Landroidx/appcompat/view/menu/vb;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final D()V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vb;->C()Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/vb;->B([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/view/menu/vb;->l:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/vb;->l:Landroid/animation/AnimatorSet;

    new-instance v2, Landroidx/appcompat/view/menu/vb$a;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/vb$a;-><init>(Landroidx/appcompat/view/menu/vb;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/vb;->B([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/vb;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/appcompat/view/menu/vb$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/vb$b;-><init>(Landroidx/appcompat/view/menu/vb;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final synthetic E(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final synthetic F(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final synthetic G(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/vb;->i:Landroid/widget/EditText;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/oo;->r()V

    return-void
.end method

.method public final synthetic H(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vb;->J()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/vb;->A(Z)V

    return-void
.end method

.method public final synthetic I()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/vb;->A(Z)V

    return-void
.end method

.method public final J()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vb;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/vb;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/oo;->b:Lcom/google/android/material/textfield/a;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/a;->w()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vb;->J()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/vb;->A(Z)V

    return-void
.end method

.method public c()I
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/an0;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/im0;->f:I

    return v0
.end method

.method public e()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vb;->k:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public f()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vb;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public g()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vb;->k:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public n(Landroid/widget/EditText;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/vb;->i:Landroid/widget/EditText;

    iget-object p1, p0, Landroidx/appcompat/view/menu/oo;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vb;->J()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->b:Lcom/google/android/material/textfield/a;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/a;->w()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/vb;->A(Z)V

    return-void
.end method

.method public s()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vb;->D()V

    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/vb;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/qb;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/qb;-><init>(Landroidx/appcompat/view/menu/vb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
