.class public Landroidx/appcompat/view/menu/kd0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/kd0$d;,
        Landroidx/appcompat/view/menu/kd0$b;,
        Landroidx/appcompat/view/menu/kd0$a;,
        Landroidx/appcompat/view/menu/kd0$c;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/i8;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/appcompat/view/menu/ld0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/view/menu/qw0;->b:Landroidx/appcompat/view/menu/qw0;

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/kd0;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/kd0;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;Landroidx/appcompat/view/menu/i8$c;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;Landroidx/appcompat/view/menu/i8$c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/kd0;->a:Landroidx/appcompat/view/menu/i8;

    iput-object p2, p0, Landroidx/appcompat/view/menu/kd0;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/kd0;->c:Landroidx/appcompat/view/menu/ld0;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/kd0;)Landroidx/appcompat/view/menu/ld0;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/kd0;->c:Landroidx/appcompat/view/menu/ld0;

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/kd0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/kd0;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/kd0;->d(Ljava/lang/String;Ljava/lang/Object;Landroidx/appcompat/view/menu/kd0$d;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0;->a:Landroidx/appcompat/view/menu/i8;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kd0;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/kd0;->c:Landroidx/appcompat/view/menu/ld0;

    new-instance v3, Landroidx/appcompat/view/menu/id0;

    invoke-direct {v3, p1, p2}, Landroidx/appcompat/view/menu/id0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Landroidx/appcompat/view/menu/ld0;->f(Landroidx/appcompat/view/menu/id0;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/appcompat/view/menu/kd0$b;

    invoke-direct {p2, p0, p3}, Landroidx/appcompat/view/menu/kd0$b;-><init>(Landroidx/appcompat/view/menu/kd0;Landroidx/appcompat/view/menu/kd0$d;)V

    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/i8;->b(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/kd0$c;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/kd0;->a:Landroidx/appcompat/view/menu/i8;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kd0;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/appcompat/view/menu/kd0$a;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/view/menu/kd0$a;-><init>(Landroidx/appcompat/view/menu/kd0;Landroidx/appcompat/view/menu/kd0$c;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Landroidx/appcompat/view/menu/i8;->a(Ljava/lang/String;Landroidx/appcompat/view/menu/i8$a;)V

    return-void
.end method
