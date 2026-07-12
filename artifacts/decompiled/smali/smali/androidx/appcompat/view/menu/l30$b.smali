.class public Landroidx/appcompat/view/menu/l30$b;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->f()Landroidx/appcompat/view/menu/nv0;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/nv0;->h(ILjava/lang/String;)Landroidx/appcompat/view/menu/n6;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
