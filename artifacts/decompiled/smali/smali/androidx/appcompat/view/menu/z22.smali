.class public final Landroidx/appcompat/view/menu/z22;
.super Landroidx/appcompat/view/menu/gg1;
.source "SourceFile"


# instance fields
.field public final o:Landroidx/appcompat/view/menu/cf1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cf1;)V
    .locals 1

    const-string v0, "internal.eventLogger"

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/gg1;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z22;->o:Landroidx/appcompat/view/menu/cf1;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/gg1;->m:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1, p2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide v1

    double-to-long v1, v1

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    instance-of p2, p1, Landroidx/appcompat/view/menu/og1;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/og1;

    invoke-static {p1}, Landroidx/appcompat/view/menu/iu1;->e(Landroidx/appcompat/view/menu/og1;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/z22;->o:Landroidx/appcompat/view/menu/cf1;

    invoke-virtual {p2, v0, v1, v2, p1}, Landroidx/appcompat/view/menu/cf1;->c(Ljava/lang/String;JLjava/util/Map;)V

    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1
.end method
