.class public final synthetic Landroidx/appcompat/view/menu/b12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/q92;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/q92;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/b12;->m:Landroidx/appcompat/view/menu/q92;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/b12;->m:Landroidx/appcompat/view/menu/q92;

    const/4 v1, 0x2

    const-string v2, "Service disconnected"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/q92;->a(ILjava/lang/String;)V

    return-void
.end method
