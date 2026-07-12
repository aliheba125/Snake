.class public Landroidx/appcompat/view/menu/ia$a;
.super Landroidx/appcompat/view/menu/ia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ia;->c(Lcom/google/android/material/carousel/CarouselLayoutManager;)Landroidx/appcompat/view/menu/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public constructor <init>(ILcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    iput-object p2, p0, Landroidx/appcompat/view/menu/ia$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/ia;-><init>(ILandroidx/appcompat/view/menu/ia$a;)V

    return-void
.end method


# virtual methods
.method public d(Landroidx/recyclerview/widget/RecyclerView$p;)F
    .locals 1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    return p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ia$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->b0()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ia$a;->e()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ia$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->j0()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ia$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->u0()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ia$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->k0()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ia$a;->j()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;II)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/ia$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ia$a;->g()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ia$a;->h()I

    move-result v4

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->F0(Landroid/view/View;IIII)V

    return-void
.end method

.method public l(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .locals 0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p3

    sub-float/2addr p4, p2

    float-to-int p2, p4

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method
