.class public final Landroidx/appcompat/view/menu/zb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/zb$a;
    }
.end annotation


# static fields
.field public static final e:Landroidx/appcompat/view/menu/zb;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/u01;

.field public final b:Ljava/util/List;

.field public final c:Landroidx/appcompat/view/menu/ox;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/zb$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/zb$a;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zb$a;->b()Landroidx/appcompat/view/menu/zb;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/zb;->e:Landroidx/appcompat/view/menu/zb;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/u01;Ljava/util/List;Landroidx/appcompat/view/menu/ox;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/zb;->a:Landroidx/appcompat/view/menu/u01;

    iput-object p2, p0, Landroidx/appcompat/view/menu/zb;->b:Ljava/util/List;

    iput-object p3, p0, Landroidx/appcompat/view/menu/zb;->c:Landroidx/appcompat/view/menu/ox;

    iput-object p4, p0, Landroidx/appcompat/view/menu/zb;->d:Ljava/lang/String;

    return-void
.end method

.method public static e()Landroidx/appcompat/view/menu/zb$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/zb$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/zb$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/zb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroidx/appcompat/view/menu/ox;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/zb;->c:Landroidx/appcompat/view/menu/ox;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/zb;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Landroidx/appcompat/view/menu/u01;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/zb;->a:Landroidx/appcompat/view/menu/u01;

    return-object v0
.end method

.method public f()[B
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/vk0;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
