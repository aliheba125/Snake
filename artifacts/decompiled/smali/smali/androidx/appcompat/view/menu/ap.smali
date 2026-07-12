.class public abstract Landroidx/appcompat/view/menu/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ap$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/ap$a;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/t5$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/t5$b;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/t5$b;->f(Ljava/util/Map;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public abstract c()Ljava/util/Map;
.end method

.method public abstract d()Ljava/lang/Integer;
.end method

.method public abstract e()Landroidx/appcompat/view/menu/jo;
.end method

.method public abstract f()J
.end method

.method public final g(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final h(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final i()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()J
.end method

.method public l()Landroidx/appcompat/view/menu/ap$a;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/t5$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/t5$b;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/t5$b;->j(Ljava/lang/String;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ap$a;->g(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->e()Landroidx/appcompat/view/menu/jo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ap$a;->h(Landroidx/appcompat/view/menu/jo;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ap$a;->i(J)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ap$a;->k(J)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ap$a;->f(Ljava/util/Map;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    return-object v0
.end method
