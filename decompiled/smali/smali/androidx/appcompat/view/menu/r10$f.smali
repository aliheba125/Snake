.class public Landroidx/appcompat/view/menu/r10$f;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/r10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Landroidx/appcompat/view/menu/hl0;->b:Landroidx/appcompat/view/menu/go0$b;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->f()Landroidx/appcompat/view/menu/nv0;

    move-result-object p2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/view/menu/nv0;->h(ILjava/lang/String;)Landroidx/appcompat/view/menu/n6;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Landroidx/appcompat/view/menu/hl0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
