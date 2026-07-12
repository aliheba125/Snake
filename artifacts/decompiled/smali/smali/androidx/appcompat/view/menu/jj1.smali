.class public final Landroidx/appcompat/view/menu/jj1;
.super Landroidx/appcompat/view/menu/gh1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gh1;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pw1;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/gg1;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/gg1;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/view/menu/gg1;->a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Function %s is not defined"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Command not found: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
