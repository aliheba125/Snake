.class public final Landroidx/appcompat/view/menu/g81$a$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/g81$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final n:Landroidx/appcompat/view/menu/g81$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/g81$a$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/g81$a$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/g81$a$a;->n:Landroidx/appcompat/view/menu/g81$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/b81;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroidx/appcompat/view/menu/g81;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/appcompat/view/menu/lr0;

    new-instance v3, Landroidx/appcompat/view/menu/qf;

    invoke-direct {v3, v1}, Landroidx/appcompat/view/menu/qf;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {v2, v1, v3}, Landroidx/appcompat/view/menu/lr0;-><init>(Ljava/lang/ClassLoader;Landroidx/appcompat/view/menu/qf;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lr0;->g()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Landroidx/appcompat/view/menu/iq;->a:Landroidx/appcompat/view/menu/iq$a;

    new-instance v4, Landroidx/appcompat/view/menu/qf;

    const-string v5, "loader"

    invoke-static {v1, v5}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Landroidx/appcompat/view/menu/qf;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v2, v4}, Landroidx/appcompat/view/menu/iq$a;->a(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/appcompat/view/menu/qf;)Landroidx/appcompat/view/menu/b81;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    invoke-static {}, Landroidx/appcompat/view/menu/g81$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/g81$a;->b()Ljava/lang/String;

    :cond_1
    :goto_1
    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g81$a$a;->a()Landroidx/appcompat/view/menu/b81;

    move-result-object v0

    return-object v0
.end method
