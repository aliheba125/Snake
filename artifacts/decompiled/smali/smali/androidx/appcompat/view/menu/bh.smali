.class public abstract Landroidx/appcompat/view/menu/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/a60;->a(Landroidx/appcompat/view/menu/tw;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object p0

    sget-object p1, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    return-void
.end method
