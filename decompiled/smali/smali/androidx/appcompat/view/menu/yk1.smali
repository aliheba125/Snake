.class public abstract Landroidx/appcompat/view/menu/yk1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroidx/appcompat/view/menu/yk1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/el1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/el1;-><init>(Landroidx/appcompat/view/menu/cl1;)V

    sput-object v0, Landroidx/appcompat/view/menu/yk1;->a:Landroidx/appcompat/view/menu/yk1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Landroidx/appcompat/view/menu/yk1;
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/yk1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/yk1;->a:Landroidx/appcompat/view/menu/yk1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URLConnection;
.end method
