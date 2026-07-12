.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g$a;->m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g$a;->m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;Z)Z

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g$a;->m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O:Landroidx/appcompat/view/menu/r51;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/r51;->k(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g$a;->m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;->c(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g$a;->m:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;

    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O0(I)V

    :cond_1
    :goto_0
    return-void
.end method
