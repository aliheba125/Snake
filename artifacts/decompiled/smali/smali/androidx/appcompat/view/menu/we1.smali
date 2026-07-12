.class public final synthetic Landroidx/appcompat/view/menu/we1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/yg;


# static fields
.field public static final synthetic a:Landroidx/appcompat/view/menu/we1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/we1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/we1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/we1;->a:Landroidx/appcompat/view/menu/we1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/zy0;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zy0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zy0;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_0
    const-string v0, "Rpc"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zy0;->h()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error making request: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zy0;->h()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
