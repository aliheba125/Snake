.class public final Landroidx/appcompat/view/menu/ri1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/gg1;

.field public final synthetic n:Landroidx/appcompat/view/menu/pw1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gg1;Landroidx/appcompat/view/menu/pw1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ri1;->m:Landroidx/appcompat/view/menu/gg1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ri1;->n:Landroidx/appcompat/view/menu/pw1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Landroidx/appcompat/view/menu/qg1;

    check-cast p2, Landroidx/appcompat/view/menu/qg1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ri1;->m:Landroidx/appcompat/view/menu/gg1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ri1;->n:Landroidx/appcompat/view/menu/pw1;

    instance-of v2, p1, Landroidx/appcompat/view/menu/eh1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    instance-of p1, p2, Landroidx/appcompat/view/menu/eh1;

    if-nez p1, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    instance-of v2, p2, Landroidx/appcompat/view/menu/eh1;

    if-eqz v2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-nez v0, :cond_3

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/appcompat/view/menu/qg1;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/gg1;->a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method
