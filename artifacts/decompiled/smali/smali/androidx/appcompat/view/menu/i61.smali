.class public abstract Landroidx/appcompat/view/menu/i61;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;Landroidx/appcompat/view/menu/eg0;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressedDispatcherOwner"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/appcompat/view/menu/tm0;->a:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
