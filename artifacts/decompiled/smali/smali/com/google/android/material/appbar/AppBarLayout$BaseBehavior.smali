.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Landroidx/appcompat/view/menu/uy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Landroidx/appcompat/view/menu/uy;"
    }
.end annotation


# instance fields
.field public k:I

.field public l:I

.field public m:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

.field public n:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/uy;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/uy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic Q(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I

    return p0
.end method


# virtual methods
.method public bridge synthetic A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->b0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->c0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic G(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->R(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic J(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->S(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic K(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->T(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method public L()I
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c61;->E()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic M(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->U(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-void
.end method

.method public bridge synthetic P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    const/4 v2, 0x0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->f0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public R(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public S(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public T(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public U(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->g0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public V(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/c61;->l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    const/4 p1, 0x0

    throw p1
.end method

.method public W(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public X(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    if-gez p5, :cond_0

    throw p1

    :cond_0
    throw p1

    :cond_1
    throw p1
.end method

.method public Y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 0

    if-ltz p7, :cond_1

    if-nez p7, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->h0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->d0(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;Z)V

    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/c;->a()Landroid/os/Parcelable;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

    :goto_0
    return-void
.end method

.method public a0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->e0(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public b0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p1, p5, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:Ljava/lang/ref/WeakReference;

    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:I

    const/4 p1, 0x0

    return p1

    :cond_0
    throw p2
.end method

.method public c0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->g0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d0(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;

    :cond_1
    return-void
.end method

.method public e0(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c61;->E()I

    const/4 p1, 0x0

    throw p1
.end method

.method public f0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->L()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    if-lt v0, p4, :cond_1

    if-gt v0, p5, :cond_1

    invoke-static {p3, p4, p5}, Landroidx/appcompat/view/menu/ub0;->b(III)I

    move-result p3

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->h0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return v1
.end method

.method public final g0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final h0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    sget-object p2, Landroidx/appcompat/view/menu/p0$a;->q:Landroidx/appcompat/view/menu/p0$a;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/p0$a;->b()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/m51;->e0(Landroid/view/View;I)V

    sget-object p2, Landroidx/appcompat/view/menu/p0$a;->r:Landroidx/appcompat/view/menu/p0$a;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/p0$a;->b()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/m51;->e0(Landroid/view/View;I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->V(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->W(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->X(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic t(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 10

    const/4 v2, 0x0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public bridge synthetic x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    invoke-static {p2}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a0(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method
