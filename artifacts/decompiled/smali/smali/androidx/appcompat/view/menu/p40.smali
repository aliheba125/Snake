.class public Landroidx/appcompat/view/menu/p40;
.super Landroidx/appcompat/view/menu/n40;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/p40$a;
    }
.end annotation


# instance fields
.field public final transient o:Landroidx/appcompat/view/menu/o40;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/m40;ILjava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/n40;-><init>(Landroidx/appcompat/view/menu/m40;I)V

    invoke-static {p3}, Landroidx/appcompat/view/menu/p40;->d(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/o40;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/p40;->o:Landroidx/appcompat/view/menu/o40;

    return-void
.end method

.method public static d(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/o40;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/o40;->u()Landroidx/appcompat/view/menu/o40;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/appcompat/view/menu/q40;->E(Ljava/util/Comparator;)Landroidx/appcompat/view/menu/lo0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/util/Collection;Ljava/util/Comparator;)Landroidx/appcompat/view/menu/p40;
    .locals 5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/p40;->f()Landroidx/appcompat/view/menu/p40;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/m40$a;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/m40$a;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/p40;->g(Ljava/util/Comparator;Ljava/util/Collection;)Landroidx/appcompat/view/menu/o40;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/m40$a;->e(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/appcompat/view/menu/m40$a;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p0, Landroidx/appcompat/view/menu/p40;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m40$a;->b()Landroidx/appcompat/view/menu/m40;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1}, Landroidx/appcompat/view/menu/p40;-><init>(Landroidx/appcompat/view/menu/m40;ILjava/util/Comparator;)V

    return-object p0
.end method

.method public static f()Landroidx/appcompat/view/menu/p40;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/do;->p:Landroidx/appcompat/view/menu/do;

    return-object v0
.end method

.method public static g(Ljava/util/Comparator;Ljava/util/Collection;)Landroidx/appcompat/view/menu/o40;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/o40;->r(Ljava/util/Collection;)Landroidx/appcompat/view/menu/o40;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/q40;->B(Ljava/util/Comparator;Ljava/util/Collection;)Landroidx/appcompat/view/menu/q40;

    move-result-object p0

    :goto_0
    return-object p0
.end method
