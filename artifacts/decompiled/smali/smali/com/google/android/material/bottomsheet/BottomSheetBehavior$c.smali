.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m61$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/m61$d;)Landroidx/appcompat/view/menu/y81;
    .locals 10

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->h()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/y81;->f(I)Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->e()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/y81;->f(I)Landroidx/appcompat/view/menu/h50;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v0, Landroidx/appcompat/view/menu/h50;->b:I

    invoke-static {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    invoke-static {p1}, Landroidx/appcompat/view/menu/m61;->g(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/y81;->h()I

    move-result v6

    invoke-static {v3, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    iget v3, p3, Landroidx/appcompat/view/menu/m61$d;->d:I

    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    move-result v6

    add-int/2addr v3, v6

    :cond_0
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_1

    iget v4, p3, Landroidx/appcompat/view/menu/m61$d;->c:I

    goto :goto_0

    :cond_1
    iget v4, p3, Landroidx/appcompat/view/menu/m61$d;->a:I

    :goto_0
    iget v6, v0, Landroidx/appcompat/view/menu/h50;->a:I

    add-int/2addr v4, v6

    :cond_2
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_3

    iget p3, p3, Landroidx/appcompat/view/menu/m61$d;->a:I

    goto :goto_1

    :cond_3
    iget p3, p3, Landroidx/appcompat/view/menu/m61$d;->c:I

    :goto_1
    iget v2, v0, Landroidx/appcompat/view/menu/h50;->c:I

    add-int v5, p3, v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v0, Landroidx/appcompat/view/menu/h50;->a:I

    if-eq v2, v8, :cond_5

    iput v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v7

    :goto_2
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->W(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v9, v0, Landroidx/appcompat/view/menu/h50;->c:I

    if-eq v8, v9, :cond_6

    iput v9, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroidx/appcompat/view/menu/h50;->b:I

    if-eq v2, v0, :cond_7

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    :goto_4
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1, v4, p3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p3, v1, Landroidx/appcompat/view/menu/h50;->d:I

    invoke-static {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    :cond_9
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:Z

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {p1, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    :cond_b
    return-object p2
.end method
