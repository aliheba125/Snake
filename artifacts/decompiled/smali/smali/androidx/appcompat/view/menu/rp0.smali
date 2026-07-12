.class public final Landroidx/appcompat/view/menu/rp0;
.super Landroidx/appcompat/view/menu/cu0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/cu0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p1
.end method

.method public b(I)F
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rp0;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rp0;->c()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rp0;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->Y()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d0()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g0()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g0()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rp0;->c()I

    move-result v0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->d0()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    return p1
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rp0;->d()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rp0;->c()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(FF)Z
    .locals 0

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/du0;->a(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h0()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Landroid/view/View;F)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b0()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c0()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    iget-object p3, p0, Landroidx/appcompat/view/menu/rp0;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g0()I

    move-result p3

    if-gt p2, p3, :cond_0

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_0
    return-void
.end method
