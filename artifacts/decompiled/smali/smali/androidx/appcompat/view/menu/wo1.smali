.class public final synthetic Landroidx/appcompat/view/menu/wo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/appcompat/view/menu/w02;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Landroidx/appcompat/view/menu/w02;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/wo1;->a:Z

    iput-object p2, p0, Landroidx/appcompat/view/menu/wo1;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/wo1;->c:Landroidx/appcompat/view/menu/w02;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/wo1;->a:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/wo1;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/wo1;->c:Landroidx/appcompat/view/menu/w02;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/k92;->c(ZLjava/lang/String;Landroidx/appcompat/view/menu/w02;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
