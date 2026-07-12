.class public final Landroidx/appcompat/view/menu/s22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/o52;


# static fields
.field public static final b:Landroidx/appcompat/view/menu/y32;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/y32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/e32;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e32;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/s22;->b:Landroidx/appcompat/view/menu/y32;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/i32;

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/appcompat/view/menu/y32;

    const/4 v2, 0x0

    .line 2
    invoke-static {}, Landroidx/appcompat/view/menu/t02;->c()Landroidx/appcompat/view/menu/t02;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroidx/appcompat/view/menu/s22;->b()Landroidx/appcompat/view/menu/y32;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/i32;-><init>([Landroidx/appcompat/view/menu/y32;)V

    .line 3
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/s22;-><init>(Landroidx/appcompat/view/menu/y32;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y32;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 5
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/v02;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y32;

    iput-object p1, p0, Landroidx/appcompat/view/menu/s22;->a:Landroidx/appcompat/view/menu/y32;

    return-void
.end method

.method public static b()Landroidx/appcompat/view/menu/y32;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/y32;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Landroidx/appcompat/view/menu/s22;->b:Landroidx/appcompat/view/menu/y32;

    return-object v0
.end method

.method public static c(Landroidx/appcompat/view/menu/s32;)Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/w22;->a:[I

    invoke-interface {p0}, Landroidx/appcompat/view/menu/s32;->b()Landroidx/appcompat/view/menu/x42;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/appcompat/view/menu/j52;
    .locals 8

    invoke-static {p1}, Landroidx/appcompat/view/menu/m52;->o(Ljava/lang/Class;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/s22;->a:Landroidx/appcompat/view/menu/y32;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/y32;->a(Ljava/lang/Class;)Landroidx/appcompat/view/menu/s32;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/s32;->c()Z

    move-result v0

    const-class v1, Landroidx/appcompat/view/menu/q02;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/m52;->u()Landroidx/appcompat/view/menu/l72;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/xz1;->b()Landroidx/appcompat/view/menu/vz1;

    move-result-object v0

    invoke-interface {v2}, Landroidx/appcompat/view/menu/s32;->a()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/i42;->j(Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/w32;)Landroidx/appcompat/view/menu/i42;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/m52;->f()Landroidx/appcompat/view/menu/l72;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/xz1;->a()Landroidx/appcompat/view/menu/vz1;

    move-result-object v0

    invoke-interface {v2}, Landroidx/appcompat/view/menu/s32;->a()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/i42;->j(Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/w32;)Landroidx/appcompat/view/menu/i42;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Landroidx/appcompat/view/menu/s22;->c(Landroidx/appcompat/view/menu/s32;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/o42;->b()Landroidx/appcompat/view/menu/l42;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/i22;->c()Landroidx/appcompat/view/menu/i22;

    move-result-object v4

    invoke-static {}, Landroidx/appcompat/view/menu/m52;->u()Landroidx/appcompat/view/menu/l72;

    move-result-object v5

    invoke-static {}, Landroidx/appcompat/view/menu/xz1;->b()Landroidx/appcompat/view/menu/vz1;

    move-result-object v6

    invoke-static {}, Landroidx/appcompat/view/menu/u32;->b()Landroidx/appcompat/view/menu/q32;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/appcompat/view/menu/e42;->n(Ljava/lang/Class;Landroidx/appcompat/view/menu/s32;Landroidx/appcompat/view/menu/l42;Landroidx/appcompat/view/menu/i22;Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/q32;)Landroidx/appcompat/view/menu/e42;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/o42;->b()Landroidx/appcompat/view/menu/l42;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/i22;->c()Landroidx/appcompat/view/menu/i22;

    move-result-object v4

    invoke-static {}, Landroidx/appcompat/view/menu/m52;->u()Landroidx/appcompat/view/menu/l72;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Landroidx/appcompat/view/menu/u32;->b()Landroidx/appcompat/view/menu/q32;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/appcompat/view/menu/e42;->n(Ljava/lang/Class;Landroidx/appcompat/view/menu/s32;Landroidx/appcompat/view/menu/l42;Landroidx/appcompat/view/menu/i22;Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/q32;)Landroidx/appcompat/view/menu/e42;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Landroidx/appcompat/view/menu/s22;->c(Landroidx/appcompat/view/menu/s32;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/o42;->a()Landroidx/appcompat/view/menu/l42;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/i22;->a()Landroidx/appcompat/view/menu/i22;

    move-result-object v4

    invoke-static {}, Landroidx/appcompat/view/menu/m52;->f()Landroidx/appcompat/view/menu/l72;

    move-result-object v5

    invoke-static {}, Landroidx/appcompat/view/menu/xz1;->a()Landroidx/appcompat/view/menu/vz1;

    move-result-object v6

    invoke-static {}, Landroidx/appcompat/view/menu/u32;->a()Landroidx/appcompat/view/menu/q32;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/appcompat/view/menu/e42;->n(Ljava/lang/Class;Landroidx/appcompat/view/menu/s32;Landroidx/appcompat/view/menu/l42;Landroidx/appcompat/view/menu/i22;Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/q32;)Landroidx/appcompat/view/menu/e42;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Landroidx/appcompat/view/menu/o42;->a()Landroidx/appcompat/view/menu/l42;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/i22;->a()Landroidx/appcompat/view/menu/i22;

    move-result-object v4

    invoke-static {}, Landroidx/appcompat/view/menu/m52;->f()Landroidx/appcompat/view/menu/l72;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Landroidx/appcompat/view/menu/u32;->a()Landroidx/appcompat/view/menu/q32;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/appcompat/view/menu/e42;->n(Ljava/lang/Class;Landroidx/appcompat/view/menu/s32;Landroidx/appcompat/view/menu/l42;Landroidx/appcompat/view/menu/i22;Landroidx/appcompat/view/menu/l72;Landroidx/appcompat/view/menu/vz1;Landroidx/appcompat/view/menu/q32;)Landroidx/appcompat/view/menu/e42;

    move-result-object p1

    return-object p1
.end method
