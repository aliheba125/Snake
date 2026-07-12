.class public abstract Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# static fields
.field public static final T:I

.field public static final U:I

.field public static final V:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/en0;->f:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:I

    sget v0, Landroidx/appcompat/view/menu/zl0;->s:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:I

    sget v0, Landroidx/appcompat/view/menu/zl0;->z:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->V:I

    return-void
.end method

.method public static synthetic M(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic N(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic O(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->P(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V

    return-void
.end method

.method public static P(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    const/16 p1, 0x11

    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    const/4 p0, 0x0

    throw p0
.end method
