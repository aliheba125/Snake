.class public Landroidx/appcompat/view/menu/l30$a;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->f()Landroidx/appcompat/view/menu/nv0;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result p2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/nv0;->g(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method
