.class public abstract Landroidx/appcompat/view/menu/ts0;
.super Landroidx/appcompat/view/menu/ss0;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Iterator;)Landroidx/appcompat/view/menu/ps0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/view/menu/ts0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ts0$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Landroidx/appcompat/view/menu/ts0;->b(Landroidx/appcompat/view/menu/ps0;)Landroidx/appcompat/view/menu/ps0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroidx/appcompat/view/menu/ps0;)Landroidx/appcompat/view/menu/ps0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroidx/appcompat/view/menu/jf;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/jf;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/jf;-><init>(Landroidx/appcompat/view/menu/ps0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
