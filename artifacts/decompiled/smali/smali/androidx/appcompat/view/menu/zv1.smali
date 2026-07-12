.class public final synthetic Landroidx/appcompat/view/menu/zv1;
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

    iput-object p1, p0, Landroidx/appcompat/view/menu/zv1;->a:Landroidx/appcompat/view/menu/rv1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/zv1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/zv1;->a:Landroidx/appcompat/view/menu/rv1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/zv1;->b:Ljava/lang/String;

    new-instance v2, Landroidx/appcompat/view/menu/rf2;

    new-instance v3, Landroidx/appcompat/view/menu/vv1;

    invoke-direct {v3, v0, v1}, Landroidx/appcompat/view/menu/vv1;-><init>(Landroidx/appcompat/view/menu/rv1;Ljava/lang/String;)V

    const-string v0, "internal.appMetadata"

    invoke-direct {v2, v0, v3}, Landroidx/appcompat/view/menu/rf2;-><init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method
