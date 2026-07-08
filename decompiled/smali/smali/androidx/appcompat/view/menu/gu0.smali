.class public final synthetic Landroidx/appcompat/view/menu/gu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Lcom/google/android/material/sidesheet/SideSheetBehavior;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gu0;->m:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iput p2, p0, Landroidx/appcompat/view/menu/gu0;->n:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gu0;->m:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v1, p0, Landroidx/appcompat/view/menu/gu0;->n:I

    invoke-static {v0, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->F(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    return-void
.end method
