.class public Landroidx/appcompat/view/menu/jp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:[B

.field public c:Landroidx/appcompat/view/menu/kd0;

.field public d:Landroidx/appcompat/view/menu/kd0$d;

.field public e:Z

.field public f:Z

.field public final g:Landroidx/appcompat/view/menu/kd0$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kd0;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/jp0;->e:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/jp0;->f:Z

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/jp0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/jp0$b;-><init>(Landroidx/appcompat/view/menu/jp0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/jp0;->g:Landroidx/appcompat/view/menu/kd0$c;

    iput-object p1, p0, Landroidx/appcompat/view/menu/jp0;->c:Landroidx/appcompat/view/menu/kd0;

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/jp0;->a:Z

    .line 4
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/kd0;->e(Landroidx/appcompat/view/menu/kd0$c;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/si;Z)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/kd0;

    const-string v1, "flutter/restoration"

    sget-object v2, Landroidx/appcompat/view/menu/qw0;->b:Landroidx/appcompat/view/menu/qw0;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/kd0;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;)V

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/view/menu/jp0;-><init>(Landroidx/appcompat/view/menu/kd0;Z)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/jp0;)[B
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/jp0;->b:[B

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/jp0;[B)[B
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jp0;->b:[B

    return-object p1
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/jp0;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/jp0;->f:Z

    return p1
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/jp0;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/jp0;->e:Z

    return p0
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/jp0;[B)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jp0;->i([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/jp0;Landroidx/appcompat/view/menu/kd0$d;)Landroidx/appcompat/view/menu/kd0$d;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jp0;->d:Landroidx/appcompat/view/menu/kd0$d;

    return-object p1
.end method


# virtual methods
.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/jp0;->b:[B

    return-void
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jp0;->b:[B

    return-object v0
.end method

.method public final i([B)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public j([B)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/jp0;->e:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/jp0;->d:Landroidx/appcompat/view/menu/kd0$d;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jp0;->i([B)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/jp0;->d:Landroidx/appcompat/view/menu/kd0$d;

    iput-object p1, p0, Landroidx/appcompat/view/menu/jp0;->b:[B

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/jp0;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jp0;->c:Landroidx/appcompat/view/menu/kd0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/jp0;->i([B)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/jp0$a;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/view/menu/jp0$a;-><init>(Landroidx/appcompat/view/menu/jp0;[B)V

    const-string p1, "push"

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/kd0;->d(Ljava/lang/String;Ljava/lang/Object;Landroidx/appcompat/view/menu/kd0$d;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/jp0;->b:[B

    :goto_0
    return-void
.end method
