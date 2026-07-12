.class public abstract Landroidx/appcompat/view/menu/ap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Landroidx/appcompat/view/menu/ap$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Ljava/lang/String;J)Landroidx/appcompat/view/menu/ap$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/ap$a;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ap$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract d()Landroidx/appcompat/view/menu/ap;
.end method

.method public abstract e()Ljava/util/Map;
.end method

.method public abstract f(Ljava/util/Map;)Landroidx/appcompat/view/menu/ap$a;
.end method

.method public abstract g(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/ap$a;
.end method

.method public abstract h(Landroidx/appcompat/view/menu/jo;)Landroidx/appcompat/view/menu/ap$a;
.end method

.method public abstract i(J)Landroidx/appcompat/view/menu/ap$a;
.end method

.method public abstract j(Ljava/lang/String;)Landroidx/appcompat/view/menu/ap$a;
.end method

.method public abstract k(J)Landroidx/appcompat/view/menu/ap$a;
.end method
