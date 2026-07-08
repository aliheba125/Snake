.class public final synthetic Landroidx/appcompat/view/menu/tv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public synthetic a:Landroidx/appcompat/view/menu/rv1;

.field public synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/rv1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/tv1;->a:Landroidx/appcompat/view/menu/rv1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/tv1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/tv1;->a:Landroidx/appcompat/view/menu/rv1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tv1;->b:Ljava/lang/String;

    new-instance v2, Landroidx/appcompat/view/menu/h72;

    new-instance v3, Landroidx/appcompat/view/menu/hw1;

    invoke-direct {v3, v0, v1}, Landroidx/appcompat/view/menu/hw1;-><init>(Landroidx/appcompat/view/menu/rv1;Ljava/lang/String;)V

    const-string v0, "internal.remoteConfig"

    invoke-direct {v2, v0, v3}, Landroidx/appcompat/view/menu/h72;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/bb2;)V

    return-object v2
.end method
