.class public final Landroidx/appcompat/view/menu/vg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/th;


# instance fields
.field public final m:Landroidx/appcompat/view/menu/kh;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/vg;->m:Landroidx/appcompat/view/menu/kh;

    return-void
.end method


# virtual methods
.method public l()Landroidx/appcompat/view/menu/kh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vg;->m:Landroidx/appcompat/view/menu/kh;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineScope(coroutineContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vg;->l()Landroidx/appcompat/view/menu/kh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
