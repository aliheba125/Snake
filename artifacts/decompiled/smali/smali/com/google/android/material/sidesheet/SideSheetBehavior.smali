.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/sidesheet/SideSheetBehavior$b;,
        Lcom/google/android/material/sidesheet/SideSheetBehavior$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;"
    }
.end annotation


# static fields
.field public static final A:I

.field public static final z:I


# instance fields
.field public a:Landroidx/appcompat/view/menu/cu0;

.field public b:F

.field public c:Landroidx/appcompat/view/menu/ob0;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroidx/appcompat/view/menu/st0;

.field public final f:Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

.field public g:F

.field public h:Z

.field public i:I

.field public j:I

.field public k:Landroidx/appcompat/view/menu/r51;

.field public l:Z

.field public m:F

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/lang/ref/WeakReference;

.field public s:Ljava/lang/ref/WeakReference;

.field public t:I

.field public u:Landroid/view/VelocityTracker;

.field public v:Landroidx/appcompat/view/menu/qb0;

.field public w:I

.field public final x:Ljava/util/Set;

.field public final y:Landroidx/appcompat/view/menu/r51$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/an0;->t:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->z:I

    sget v0, Landroidx/appcompat/view/menu/en0;->e:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Landroidx/appcompat/view/menu/r51$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Z

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:I

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    .line 7
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Ljava/util/Set;

    .line 8
    new-instance v2, Lcom/google/android/material/sidesheet/SideSheetBehavior$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$a;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Landroidx/appcompat/view/menu/r51$c;

    .line 9
    sget-object v2, Landroidx/appcompat/view/menu/ln0;->W3:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 10
    sget v3, Landroidx/appcompat/view/menu/ln0;->Y3:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    sget v3, Landroidx/appcompat/view/menu/ln0;->Y3:I

    .line 12
    invoke-static {p1, v2, v3}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Landroid/content/res/ColorStateList;

    .line 13
    :cond_0
    sget v3, Landroidx/appcompat/view/menu/ln0;->b4:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    sget v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A:I

    .line 14
    invoke-static {p1, p2, v3, v4}, Landroidx/appcompat/view/menu/st0;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0$b;->m()Landroidx/appcompat/view/menu/st0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Landroidx/appcompat/view/menu/st0;

    .line 15
    :cond_1
    sget p2, Landroidx/appcompat/view/menu/ln0;->a4:I

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    sget p2, Landroidx/appcompat/view/menu/ln0;->a4:I

    .line 17
    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w0(I)V

    .line 19
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->U(Landroid/content/Context;)V

    .line 20
    sget p2, Landroidx/appcompat/view/menu/ln0;->X3:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:F

    .line 21
    sget p2, Landroidx/appcompat/view/menu/ln0;->Z3:I

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x0(Z)V

    .line 22
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b:F

    return-void
.end method

.method private C0()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic E(Lcom/google/android/material/sidesheet/SideSheetBehavior;ILandroid/view/View;Landroidx/appcompat/view/menu/s0$a;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q0(ILandroid/view/View;Landroidx/appcompat/view/menu/s0$a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic F(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r0(I)V

    return-void
.end method

.method public static synthetic G(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    return p0
.end method

.method private G0(Landroid/view/View;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p0(Landroid/view/View;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->B0(I)V

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior$c;

    invoke-virtual {p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior$c;->b(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->B0(I)V

    :goto_0
    return-void
.end method

.method public static synthetic H(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private H0()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/m51;->e0(Landroid/view/View;I)V

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/m51;->e0(Landroid/view/View;I)V

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    sget-object v1, Landroidx/appcompat/view/menu/p0$a;->y:Landroidx/appcompat/view/menu/p0$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t0(Landroid/view/View;Landroidx/appcompat/view/menu/p0$a;I)V

    :cond_2
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    sget-object v1, Landroidx/appcompat/view/menu/p0$a;->w:Landroidx/appcompat/view/menu/p0$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t0(Landroid/view/View;Landroidx/appcompat/view/menu/p0$a;I)V

    :cond_3
    return-void
.end method

.method public static synthetic I(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Landroidx/appcompat/view/menu/cu0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    return-object p0
.end method

.method public static synthetic J(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->V(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic K(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Z

    return p0
.end method

.method public static synthetic L(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;FF)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->R(Landroid/view/View;FF)I

    move-result p0

    return p0
.end method

.method public static synthetic M(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->G0(Landroid/view/View;IZ)V

    return-void
.end method

.method public static synthetic N(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:I

    return p0
.end method

.method public static synthetic O(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Landroidx/appcompat/view/menu/r51;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    return-object p0
.end method

.method private T(I)Landroidx/appcompat/view/menu/s0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/fu0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/fu0;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    return-object v0
.end method

.method private U(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Landroidx/appcompat/view/menu/st0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ob0;

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Landroidx/appcompat/view/menu/st0;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ob0;-><init>(Landroidx/appcompat/view/menu/st0;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroidx/appcompat/view/menu/ob0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ob0;->J(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroidx/appcompat/view/menu/ob0;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ob0;->T(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x1010031

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroidx/appcompat/view/menu/ob0;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ob0;->setTint(I)V

    :goto_0
    return-void
.end method

.method private X(IIII)I
    .locals 0

    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p2, p4, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    const/high16 p1, -0x80000000

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private t0(Landroid/view/View;Landroidx/appcompat/view/menu/p0$a;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->T(I)Landroidx/appcompat/view/menu/s0;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Landroidx/appcompat/view/menu/m51;->g0(Landroid/view/View;Landroidx/appcompat/view/menu/p0$a;Ljava/lang/CharSequence;Landroidx/appcompat/view/menu/s0;)V

    return-void
.end method

.method private v0(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o0(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public A0(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroidx/appcompat/view/menu/gu0;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/gu0;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v0(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->B0(I)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_4

    const-string p1, "DRAGGING"

    goto :goto_3

    :cond_4
    const-string p1, "SETTLING"

    :goto_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should not be set externally."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public B0(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_1
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:I

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->J0(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->H0()V

    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->C0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/r51;->z(Landroid/view/MotionEvent;)V

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u0()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->C0()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Z

    if-nez p1, :cond_5

    invoke-virtual {p0, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m0(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/r51;->b(Landroid/view/View;I)V

    :cond_5
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public D0(Landroid/view/View;F)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/cu0;->m(Landroid/view/View;F)Z

    move-result p1

    return p1
.end method

.method public final E0(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->l(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final I0(Landroidx/appcompat/view/menu/st0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroidx/appcompat/view/menu/ob0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ob0;->setShapeAppearanceModel(Landroidx/appcompat/view/menu/st0;)V

    :cond_0
    return-void
.end method

.method public final J0(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final P(ILandroid/view/View;)I
    .locals 2

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cu0;->d()I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/cu0;->g(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public final Q(FF)F
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method public final R(Landroid/view/View;FF)I
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n0(F)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->D0(Landroid/view/View;F)Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/view/menu/cu0;->l(FF)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/cu0;->k(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    invoke-static {p2, p3}, Landroidx/appcompat/view/menu/du0;->a(FF)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a0()I

    move-result p2

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cu0;->d()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p2, p1, :cond_1

    :cond_4
    :goto_0
    return v1
.end method

.method public final S()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final V(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/cu0;->b(I)F

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final W(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->l(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/m51;->n0(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public Y()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:I

    return v0
.end method

.method public Z()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cu0;->c()I

    move-result v0

    return v0
.end method

.method public b0()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:F

    return v0
.end method

.method public c0()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public d0()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:I

    return v0
.end method

.method public e0(I)I
    .locals 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cu0;->d()I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state to get outer edge offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a0()I

    move-result p1

    return p1
.end method

.method public f0()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:I

    return v0
.end method

.method public g(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Landroidx/appcompat/view/menu/qb0;

    return-void
.end method

.method public g0()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    return v0
.end method

.method public h0()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public i0()Landroidx/appcompat/view/menu/r51;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    return-object v0
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Landroidx/appcompat/view/menu/qb0;

    return-void
.end method

.method public final j0()Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->E0(Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Z

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u0()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Z

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Z

    return v0

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w:I

    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/r51;->G(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move p2, v0

    :goto_1
    return p2
.end method

.method public final k0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j0()Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->u(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/appcompat/view/menu/m51;->u(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroidx/appcompat/view/menu/qb0;

    invoke-direct {v0, p2}, Landroidx/appcompat/view/menu/qb0;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Landroidx/appcompat/view/menu/qb0;

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroidx/appcompat/view/menu/ob0;

    if-eqz v0, :cond_2

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/m51;->o0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c:Landroidx/appcompat/view/menu/ob0;

    iget v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroidx/appcompat/view/menu/m51;->s(Landroid/view/View;)F

    move-result v2

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ob0;->S(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/m51;->p0(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->J0(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->H0()V

    invoke-static {p2}, Landroidx/appcompat/view/menu/m51;->v(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/m51;->u0(Landroid/view/View;I)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->W(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->z0(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y:Landroidx/appcompat/view/menu/r51$c;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/r51;->m(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/r51$c;)Landroidx/appcompat/view/menu/r51;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/cu0;->g(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->G(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/cu0;->h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->n:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/cu0;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p3

    goto :goto_1

    :cond_7
    const/4 p3, 0x0

    :goto_1
    iput p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:I

    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->P(ILandroid/view/View;)I

    move-result p3

    invoke-static {p2, p3}, Landroidx/appcompat/view/menu/m51;->U(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    return v1
.end method

.method public final l0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j0()Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x1

    invoke-direct {p0, p3, v1, v2, p4}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->X(IIII)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p4, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p4, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, p1

    add-int/2addr p4, p6

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0, p5, p4, v2, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->X(IIII)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->measure(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final m0(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->C0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->Q(FF)F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:Landroidx/appcompat/view/menu/r51;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r51;->u()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final n0(F)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/cu0;->j(F)Z

    move-result p1

    return p1
.end method

.method public final o0(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->N(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p0(Landroid/view/View;IZ)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e0(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i0()Landroidx/appcompat/view/menu/r51;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/view/menu/r51;->F(II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/r51;->H(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final synthetic q0(ILandroid/view/View;Landroidx/appcompat/view/menu/s0$a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A0(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic r0(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->G0(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public final s0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final u0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public w0(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t:I

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->S()V

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/m51;->O(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1

    check-cast p3, Lcom/google/android/material/sidesheet/SideSheetBehavior$b;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/c;->a()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/c;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    :cond_0
    iget p1, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior$b;->o:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x5

    :cond_2
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:I

    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->j:I

    return-void
.end method

.method public x0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:Z

    return-void
.end method

.method public y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$b;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$b;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    return-object v0
.end method

.method public final y0(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cu0;->i()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroidx/appcompat/view/menu/rp0;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/rp0;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Landroidx/appcompat/view/menu/st0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l0()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Landroidx/appcompat/view/menu/st0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/st0;->v()Landroidx/appcompat/view/menu/st0$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st0$b;->E(F)Landroidx/appcompat/view/menu/st0$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/st0$b;->w(F)Landroidx/appcompat/view/menu/st0$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/st0$b;->m()Landroidx/appcompat/view/menu/st0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->I0(Landroidx/appcompat/view/menu/st0;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    new-instance p1, Landroidx/appcompat/view/menu/q80;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/q80;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Landroidx/appcompat/view/menu/cu0;

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Landroidx/appcompat/view/menu/st0;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k0()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->e:Landroidx/appcompat/view/menu/st0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/st0;->v()Landroidx/appcompat/view/menu/st0$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st0$b;->A(F)Landroidx/appcompat/view/menu/st0$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/st0$b;->s(F)Landroidx/appcompat/view/menu/st0$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/st0$b;->m()Landroidx/appcompat/view/menu/st0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->I0(Landroidx/appcompat/view/menu/st0;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sheet edge position value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Must be "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z0(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    iget p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/hy;->b(II)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->y0(I)V

    return-void
.end method
