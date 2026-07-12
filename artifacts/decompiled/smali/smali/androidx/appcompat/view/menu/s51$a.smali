.class public abstract Landroidx/appcompat/view/menu/s51$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/s51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/view/ViewGroup;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/ViewGroup;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    return-void
.end method
