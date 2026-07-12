.class public final synthetic Landroidx/appcompat/view/menu/pj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/sj;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/pj;->a:Landroidx/appcompat/view/menu/sj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pj;->a:Landroidx/appcompat/view/menu/sj;

    invoke-static {v0}, Landroidx/appcompat/view/menu/sj;->d(Landroidx/appcompat/view/menu/sj;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
