.class public final synthetic Landroidx/appcompat/view/menu/ql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/profileinstaller/b;

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/b;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ql;->m:Landroidx/profileinstaller/b;

    iput p2, p0, Landroidx/appcompat/view/menu/ql;->n:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/ql;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ql;->m:Landroidx/profileinstaller/b;

    iget v1, p0, Landroidx/appcompat/view/menu/ql;->n:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/ql;->o:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroidx/profileinstaller/b;->a(Landroidx/profileinstaller/b;ILjava/lang/Object;)V

    return-void
.end method
