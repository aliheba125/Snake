.class public Landroidx/appcompat/view/menu/fn;
.super Landroidx/appcompat/view/menu/oo;
.source "SourceFile"


# static fields
.field public static final s:Z


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Landroid/animation/TimeInterpolator;

.field public h:Landroid/widget/AutoCompleteTextView;

.field public final i:Landroid/view/View$OnClickListener;

.field public final j:Landroid/view/View$OnFocusChangeListener;

.field public final k:Landroidx/appcompat/view/menu/e0$a;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:J

.field public p:Landroid/view/accessibility/AccessibilityManager;

.field public q:Landroid/animation/ValueAnimator;

.field public r:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/appcompat/view/menu/fn;->s:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/a;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/oo;-><init>(Lcom/google/android/material/textfield/a;)V

    new-instance v0, Landroidx/appcompat/view/menu/ym;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ym;-><init>(Landroidx/appcompat/view/menu/fn;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/fn;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Landroidx/appcompat/view/menu/zm;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/zm;-><init>(Landroidx/appcompat/view/menu/fn;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/fn;->j:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Landroidx/appcompat/view/menu/an;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/an;-><init>(Landroidx/appcompat/view/menu/fn;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/fn;->k:Landroidx/appcompat/view/menu/e0$a;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroidx/appcompat/view/menu/fn;->o:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/zl0;->w:I

    const/16 v2, 0x43

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/zd0;->f(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/fn;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/zl0;->w:I

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/zd0;->f(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/fn;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroidx/appcompat/view/menu/zl0;->A:I

    sget-object v1, Landroidx/appcompat/view/menu/j2;->a:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/zd0;->g(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/fn;->g:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static synthetic A(Landroidx/appcompat/view/menu/fn;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->H()V

    return-void
.end method

.method public static synthetic B(Landroidx/appcompat/view/menu/fn;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/fn;->K(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic C(Landroidx/appcompat/view/menu/fn;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/fn;->r:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static D(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/AutoCompleteTextView;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private F()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/fn;->f:I

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/view/menu/fn;->E(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/fn;->r:Landroid/animation/ValueAnimator;

    iget v0, p0, Landroidx/appcompat/view/menu/fn;->e:I

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/fn;->E(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/fn;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/appcompat/view/menu/fn$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/fn$a;-><init>(Landroidx/appcompat/view/menu/fn;)V

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

.method private synthetic J(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->Q()V

    return-void
.end method

.method private synthetic K(Landroid/view/View;Z)V
    .locals 0

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/fn;->l:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/oo;->r()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/fn;->O(Z)V

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/fn;->m:Z

    :cond_0
    return-void
.end method

.method public static synthetic v(Landroidx/appcompat/view/menu/fn;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/fn;->I(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic w(Landroidx/appcompat/view/menu/fn;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/fn;->M(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Landroidx/appcompat/view/menu/fn;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/fn;->L(Z)V

    return-void
.end method

.method public static synthetic y(Landroidx/appcompat/view/menu/fn;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/fn;->J(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Landroidx/appcompat/view/menu/fn;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->N()V

    return-void
.end method


# virtual methods
.method public final varargs E(I[F)Landroid/animation/ValueAnimator;
    .locals 2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroidx/appcompat/view/menu/bn;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/bn;-><init>(Landroidx/appcompat/view/menu/fn;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method public final G()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/appcompat/view/menu/fn;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final synthetic H()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fn;->O(Z)V

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->m:Z

    return-void
.end method

.method public final synthetic I(Landroid/animation/ValueAnimator;)V
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

.method public final synthetic L(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/appcompat/view/menu/ln;->a(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->d:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/m51;->u0(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public final synthetic M(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->G()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->m:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->Q()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->R()V

    :cond_1
    return v0
.end method

.method public final synthetic N()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->R()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fn;->O(Z)V

    return-void
.end method

.method public final O(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/fn;->n:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Landroidx/appcompat/view/menu/dn;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/dn;-><init>(Landroidx/appcompat/view/menu/fn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-boolean v0, Landroidx/appcompat/view/menu/fn;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Landroidx/appcompat/view/menu/en;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/en;-><init>(Landroidx/appcompat/view/menu/fn;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    return-void
.end method

.method public final Q()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/fn;->m:Z

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->m:Z

    if-nez v0, :cond_4

    sget-boolean v0, Landroidx/appcompat/view/menu/fn;->s:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->n:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/fn;->O(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->n:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->n:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/oo;->r()V

    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/fn;->m:Z

    :goto_1
    return-void
.end method

.method public final R()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/fn;->o:J

    return-void
.end method

.method public a(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->p:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ln;->a(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/oo;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Landroidx/appcompat/view/menu/cn;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/cn;-><init>(Landroidx/appcompat/view/menu/fn;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()I
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/an0;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/fn;->s:Z

    if-eqz v0, :cond_0

    sget v0, Landroidx/appcompat/view/menu/im0;->d:I

    goto :goto_0

    :cond_0
    sget v0, Landroidx/appcompat/view/menu/im0;->e:I

    :goto_0
    return v0
.end method

.method public e()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->j:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public f()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public h()Landroidx/appcompat/view/menu/e0$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->k:Landroidx/appcompat/view/menu/e0$a;

    return-object v0
.end method

.method public i(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->l:Z

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/fn;->n:Z

    return v0
.end method

.method public n(Landroid/widget/EditText;)V
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/view/menu/fn;->D(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->P()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/ln;->a(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->p:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/oo;->d:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/m51;->u0(Landroid/view/View;I)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/oo;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method

.method public o(Landroid/view/View;Landroidx/appcompat/view/menu/p0;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ln;->a(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/p0;->c0(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/p0;->P()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/p0;->m0(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public p(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->p:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ln;->a(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const v0, 0x8000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/fn;->n:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    if-eq p2, v1, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->Q()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fn;->R()V

    :cond_3
    :goto_1
    return-void
.end method

.method public s()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/fn;->F()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->c:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroidx/appcompat/view/menu/fn;->p:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-boolean v0, Landroidx/appcompat/view/menu/fn;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/fn;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method
