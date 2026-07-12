.class public Landroidx/appcompat/view/menu/kl;
.super Landroidx/appcompat/view/menu/ll;
.source "SourceFile"


# instance fields
.field public final m:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dependency cycle detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/ll;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/kl;->m:Ljava/util/List;

    return-void
.end method
