.class public final synthetic Landroidx/appcompat/view/menu/af1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/bz0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/bz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/af1;->m:Landroidx/appcompat/view/menu/bz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/af1;->m:Landroidx/appcompat/view/menu/bz0;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/bz0;->d(Ljava/lang/Exception;)Z

    return-void
.end method
